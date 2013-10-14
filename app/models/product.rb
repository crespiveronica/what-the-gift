class Product
  include Mongoid::Document
  include Mongoid::Search

  field :name, type: String
  field :description, type: String
  field :brand, type: String
  field :approved, type: Boolean

  has_and_belongs_to_many :categories
  has_many :selling_products

  search_in :brand, :name, :descripcion, :categories => :name


  def asorted_recommended_for user
  	Product.full_text_search( to_keys user.interests , match: :any, relevant_search: true)
  end

  def to_keys array
    string = ''
    array.each { |a| string += a + ' ' }
    string
  end

  def categories_names
  	self.categories.map { |c| c.name }
  end
end