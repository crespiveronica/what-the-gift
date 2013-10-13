class Seller < GenericUser
  attr_accessible :company_name, :web, :location, :phone

  field :company_name, type: String
  field :web, type: String
  field :location, type: String
  field :phone, type: String

  embeds_many :products

  def full_name
    web
  end

end