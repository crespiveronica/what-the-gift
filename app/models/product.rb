class Product
  include Mongoid::Document
  include Mongoid::Search

  field :name, type: String
  field :description, type: String
  field :brand, type: String
  field :approved, type: Boolean, default: true
  field :photo_url, type: String

  has_and_belongs_to_many :categories
  has_many :selling_products

  search_in :brand, :name, :description, :categories => :name

  def short_description
    self.description.truncate(50, omission: '...')
  end

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

  def photo
    photo_url ? photo_url : "Fotos.png"
  end

  def sellers
    selling_products.map{|sp| sp.seller.company_name}.join(', ')
  end

  def lowest_price
    selling_products.sort_by {|sp| sp.price }.first.price 
  end

  def categories_string
    categories_names.join(',')
  end

  def self.from_json json
    product = Product.new
    product.name = json["nombre"]
    product.description = json["descripcion"]
    product.brand = json["marca"]
    product.photo_url = json["url_foto"]
    product.categories = []
    json['categorias'].each do |category_name|
      category = Category.where({ :name => /.*#{category_name}.*/i }).first
      if(!category.nil?)
        product.categories << category
      end
    end
    product
  end

end