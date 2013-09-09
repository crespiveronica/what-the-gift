class Product
  include Mongoid::Document
  include Mongoid::Search
  
  field :name, type: String
  field :description, type: String
  field :brand, type: String
  field :approved, type: Boolean

  has_and_belongs_to_many :categories

  search_in :brand, :name, :descripcion, :categories => :name
end