class Hobby
  include Mongoid::Document
  include Mongoid::Search

  field :name, type: String

  belongs_to :user
end