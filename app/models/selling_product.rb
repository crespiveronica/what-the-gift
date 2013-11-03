class SellingProduct
  include Mongoid::Document

  attr_accessible :banned, :banned_reason
  
  field :price, type: Float
  field :banned, type: Boolean, default: false
  field :banned_reason, type: String

  belongs_to :seller
  belongs_to :product

  default_scope where(banned: false).in(seller_id: Seller.all.map(&:id))

  def self.for_admin
   unscoped.in(seller_id: Seller.all.map(&:id))
  end

  def self.from_json json
    selling_product = SellingProduct.new
  	product = Product.from_json json
    selling_product.product = product
    sprice = json["precio"].gsub(',', '.')
    if(!Matcher.float? sprice)
      raise ParsingFileError.newUnparsablePrice
    end
    price = sprice.to_f
    if(price <= 0)
      raise ParsingFileError.newNegativePrice
    end
    selling_product.price = price
    selling_product
  end
end