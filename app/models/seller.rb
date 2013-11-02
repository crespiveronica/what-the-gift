class Seller < GenericUser
  attr_accessible :company_name, :web, :location, :phone

  field :company_name, type: String
  field :web, type: String
  field :location, type: String
  field :phone, type: String

  has_many :selling_products

  validates :company_name, presence: true
  default_scope order_by :email => :asc

  def full_name
    company_name
  end

end