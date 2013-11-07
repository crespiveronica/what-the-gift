class Seller < GenericUser
  attr_accessible :company_name, :web, :location, :phone

  field :company_name, type: String
  field :web, type: String
  field :location, type: String
  field :phone, type: String

  has_many :selling_products

  validates :company_name, presence: true

  scope :ordered, order_by( :company_name => :asc )

  def full_name
    company_name
  end

  def estimado_a
   "Estimado/a"
  end

end