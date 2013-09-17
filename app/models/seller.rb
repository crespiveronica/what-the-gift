class Seller < GenericUser
  attr_accessible :company_name, :web

	field :company_name, type: String
	field :web, type: String
	embeds_many :products
end