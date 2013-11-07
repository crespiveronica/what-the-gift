class FriendRequest
  include Mongoid::Document

  belongs_to :owner, :class_name => "User"
  belongs_to :friend, :class_name => "User"
  field :accepted, :type => Boolean, :default => false

  default_scope all.in(owner_id: User.all.map(&:id)).in(friend_id: User.all.map(&:id))  

  def self.find_by_friends(user, friend)
    requests = FriendRequest.where({ owner: user, friend: friend })
    requests += FriendRequest.where({ owner: friend, friend: user })
    requests.first
  end

  def self.friends_or_pending(owner, friend)
  	requests = FriendRequest.where({ owner: owner, friend: friend })
  	requests += FriendRequest.where({ owner: friend, friend: owner })
  	
  	requests.count > 0
  end
end