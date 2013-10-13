class SellingProduct
  include Mongoid::Document

  field :price, type: Float
  field :approved, type: Boolean
  
  embedded_in :seller
  has_one :product
end