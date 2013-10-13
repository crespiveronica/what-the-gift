class SellingProduct
  include Mongoid::Document

  field :price, type: Float
  field :approved, type: Boolean
  
  embedded_in :seller
  belongs_to :product
end