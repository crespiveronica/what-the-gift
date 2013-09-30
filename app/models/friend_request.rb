class FriendRequest
  include Mongoid::Document

  belongs_to :owner, :class_name => "User"
  belongs_to :friend, :class_name => "User"
  field :accepted, :type => Boolean, :default => false

  def self.pending_friends(owner, friend)
  	requests = FriendRequest.where({ accepted: false, owner: owner, friend: friend })
  	requests += FriendRequest.where({ accepted: false, owner: friend, friend: owner })
  	
  	requests.count > 0
  end
end