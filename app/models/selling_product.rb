class SellingProduct
  include Mongoid::Document

  field :price, type: Float
  field :approved, type: Boolean
  
  belongs_to :seller
  belongs_to :product
end