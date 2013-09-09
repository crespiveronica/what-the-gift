class Seller < GenericUser
	field :company_name, type: String
	field :web, type: String
	embeds_many :products
end