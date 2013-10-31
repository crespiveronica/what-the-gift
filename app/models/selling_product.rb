class SellingProduct
  include Mongoid::Document

  attr_accessible :banned, :banned_reason
  
  field :price, type: Float
  field :approved, type: Boolean
  field :banned, type: Boolean, default: true
  field :banned_reason, type: String

  belongs_to :seller
  belongs_to :product

  def self.from_json json
    selling_product = SellingProduct.new
  	product = Product.from_json json
    selling_product.product = product
    selling_product.price = json["precio"].gsub(',', '.').to_f
    selling_product
  end
end