class User < GenericUser
  Mongoid::MultiParameterAttributes

  attr_accessible :hobbies, :occupation, :hobbies_attributes, :birthday, :genre
  has_and_belongs_to_many :wishlist, class_name: 'Product'
  embeds_many :gifts
  has_many :friend_requests, :inverse_of => :owner, :foreign_key => "owner_id"
  has_many :friend_requests, :inverse_of => :friend, :foreign_key => "friend_id"
  has_many :hobbies, :autosave => true
  accepts_nested_attributes_for :hobbies
  field :occupation, type: String
  field :first_name, type: String
  field :last_name, type: String
  field :birthday, type: Date
  field :genre, type: String

  validates :birthday, presence: true
  
  scope :ordered, order_by( :email => :asc )

def gift_from_product(product)
	self.gifts.each do |g|
		if g.product == product
			return g
		end
	end
	return nil
end

def full_name
  first_name + ' ' + last_name
end

def friends
	reqs = FriendRequest.where({accepted: true}).any_of({owner: self}, {friend: self})
	friends = reqs.map { |req| req.owner == self ? req.friend : req.owner}
	friends.sort_by &:first_name
end

def friend_request friend
	reqs = self.friend_requests.where({accepted: true, friend: friend})
	reqs += self.friend_requests.where({accepted: true, owner: friend})
	reqs.first
end

def pending_requests
	self.friend_requests.where({accepted: false})
end

def is_friend(friend)
	self.friends.include? friend
end

def self.find_by_id id
	User.where(id: id).first
end

def self.find_by_email email
	User.where(email: email).first
end

def asorted_recommended
	suitable_gifts_from( Product.full_text_search( interests, match: :any , relevant_search: true) - products_from_gifts)
end

def suitable_gifts_from products
	products.delete_if { |product| Matcher.matches_any(product.categories_names, oposite_genre) }
end

def oposite_genre
	if( genre == 'Mujer')
		'Hombre'
	else
		'Mujer'
	end
end

def recommended
	products = asorted_recommended
  products.sort_by {|product| - (how_good_is product) }
end

def interests
	(hobbies_names + interests_from_wishList + interests_from_gifts).uniq << genre
end

def interests_from_wishList
	interests_from_wishlist = []
	self.wishlist.each do |wish|
		interests_from_wishlist += wish.categories_names << wish.name << wish.brand
	end
	interests_from_wishlist
end

def interests_from_gifts
	interests_from_gifts = []
	self.gifts.each do |gift|
		if gift.liked
			interests_from_gifts += gift.product.categories_names << gift.product.brand
		end
	end
	interests_from_gifts
end

def how_good_is product
	product.relevance + points_to(product.name, 10) + points_to(product.description, 4) + points_to_items(product.categories_names, 3)
end

def points_to(what, howMany)
	Matcher.matches(what, interests) ? howMany : 0
end

def points_to_items(what, howMany)
	Matcher.matches_how_many_items(what, interests) * howMany
end

def products_from_gifts
	self.gifts.map { |gift| gift.product }
end

def hobbies_string
	string = ''
	if(self.hobbies_list.nil?)
		string = 'No has cargado pasatiempos'
	else
		self.hobbies_list.each { |h|
			string += h.name + ( h==self.hobbies_list.last ? '.' : ', ' )
		}
	end
	string
end

def hobbies_list
	self.hobbies.nil? ? [] : self.hobbies
end

def self.birthday_users
	users = User.all
	birthday_users = Array.new
	users.each do |u|
		if u.birthday_this_year > Date.today and u.birthday_this_year < Date.today + 10
			birthday_users.push u
		end
	end
	birthday_users
end

def remaining_days
	diff = (Date.today - birthday_this_year).to_i.abs
end

def birthday_this_year
	date = Date.parse(Date.today.year.to_s + "/" + self.birthday.month.to_s + "/" + self.birthday.day.to_s)
end

def estimado_a
	if( genre == 'Mujer')
		'Estimada'
	else
		'Estimado'
	end
end


private

def hobbies_names
  self.hobbies.entries.map { |h| h.name }
end

end
