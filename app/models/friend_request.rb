class FriendRequest
  include Mongoid::Document
  
  belongs_to :owner, :class_name => "User"
  belongs_to :friend, :class_name => "User"
  field :accepted, :type => Boolean, :default => false
end