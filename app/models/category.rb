class Category
  include Mongoid::Document

  field :name, type: String
  field :description, type: String
  field :show_in_menu, type: Boolean, default: false

  has_and_belongs_to_many :products

  validates :name, uniqueness: {case_sensitive: false}

  default_scope order_by :name => :asc

  scope :menu, where(show_in_menu: true)

  def self.for_admin
  	unscoped.order_by :name => :asc
  end

end