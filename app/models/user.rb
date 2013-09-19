class User < GenericUser
  include Mongoid::Paperclip
  
  attr_accessible :hobbies, :occupation, :avatar

  has_and_belongs_to_many :wishlist, class_name: 'Product'
  embeds_many :gifts
  field :hobbies, type: Array
  field :occupation, type: String
  has_mongoid_attached_file :avatar, :default_url => "/assets/missing.png"

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
	(hobbies_list + interests_from_wishList + interests_from_gifts).uniq
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
	if(self.hobbies.nil?)
		string = '-'
	else
		self.hobbies.each { |h| 
			string += h + ( h==self.hobbies.last ? '.' : ', ' )
		}
	end
	string
end

private

def hobbies_to_array
    self.hobbies = self.hobbies.split(',')
    self.hobbies.each do |h|
      h.lstrip!
    end
end

def hobbies_list
	self.hobbies.nil? ? [] : self.hobbies
end

end