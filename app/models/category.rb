class Category
  include Mongoid::Document

  field :name, type: String
  field :description, type: String

  has_and_belongs_to_many :products

  validates :name, uniqueness: {case_sensitive: false}

  default_scope order_by :name => :asc

  def for_admin
  	unscoped.order_by :name => :asc
  end

end