class Admin
  include Mongoid::Document
  field :name, type: String
  field :password, type: String
end
