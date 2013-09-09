class User < GenericUser
  has_many :whishlist, class_name: 'Product'
  embeds_many :gifts
  field :hobbies, type: Array
end