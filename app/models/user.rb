class User < GenericUser
  include Mongoid::Paperclip
  
  attr_accessible :hobbies, :occupation, :avatar, :hobbies_attributes
  has_and_belongs_to_many :wishlist, class_name: 'Product'
  embeds_many :gifts
  has_many :friend_requests, :inverse_of => :owner, :foreign_key => "owner_id"
  has_many :friend_requests, :inverse_of => :friend, :foreign_key => "friend_id"
  has_many :hobbies
  accepts_nested_attributes_for :hobbies
  field :occupation, type: String
  has_mongoid_attached_file :avatar, :default_url => "/assets/missing.png"

def friends
	reqs = self.friend_requests.where({accepted: true})
	friends = reqs.map{ | req | req.owner_id == self.id ? req.friend : req.owner }
	friends
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

def asorted_recommended
	Product.full_text_search( interests, match: :any , relevant_search: true) - products_from_gifts
end

def recommended
	products = asorted_recommended
  products.sort_by {|product| - (how_good_is product) }
end

def interests
	(hobbies_names + interests_from_wishList + interests_from_gifts).uniq
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
	product.relevance + points_to(product.name, 10) + points_to(product.description, 4) + points_to_items(product.categories_names, 7)
end

def points_to(what, howMany)
	Matcher.matches(what, interests) ? howMany : 0
end

def points_to_items(what, howMany)
	Matcher.matches_how_many_items(what, interests) ? howMany : 0
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

private

def hobbies_list
	self.hobbies.nil? ? [] : self.hobbies
end

def hobbies_names
  self.hobbies.entries.map { |h| h.name }
end

end
