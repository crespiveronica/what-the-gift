class SellingProduct
  include Mongoid::Document

  attr_accessible :banned, :banned_reason
  
  field :price, type: Float
  field :approved, type: Boolean
  field :banned, type: Boolean, default: true
  field :banned_reason, type: String

  belongs_to :seller
  belongs_to :product

end