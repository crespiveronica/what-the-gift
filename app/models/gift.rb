class Gift
  include Mongoid::Document
  
  embedded_in :user
  has_one :product
  field :score
end