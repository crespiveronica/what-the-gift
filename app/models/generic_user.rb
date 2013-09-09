class GenericUser
  include Mongoid::Document
  include Mongoid::Search

  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :password, type: String
  field :active, type: Boolean
  field :banned, type: Boolean
  field :banned_reason, type: String

  belongs_to :banned_user, class_name: 'Admin'
end