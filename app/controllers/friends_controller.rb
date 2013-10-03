class FriendsController < ApplicationController

  def index
    @friends = current_user.friends
  	render 'friends/index', layout: 'myfriends'
  end

  def search
  end

  def requests
  	@pending_requests = current_user.pending_requests
    render 'friends/requests', layout: 'myfriends'
  end

  def send_request
    request = FriendRequest.new
    request.owner = current_user
    friend = User.find_by_id params[:id]
    request.friend = friend
    request.save
    redirect_to action: 'show', :id => params[:id]
  end

  def accept
    request = FriendRequest.find(params[:id])
    request.accepted = true
    request.save
    redirect_to action: 'index'
  end

  def unfriend    
    request = FriendRequest.find(params[:id])
    friend = request.owner = current_user ? request.owner : request.friend
    request.delete
    flash[:success] = "Se ha eliminado a #{friend.full_name} de sus amigos"
    redirect_to action: 'index'
  end

  def pending
  	render 'friends/pending', layout: 'myfriends'
  end

  def show
    @friend = User.find_by_id params[:id]
    @pending_friends = FriendRequest.friends_or_pending(current_user, @friend)
    @request = FriendRequest.find_by_friends(current_user, @friend)
    render 'friends/show', layout: 'friend'
  end

  def makeAGift
    @friend = User.find_by_id params[:id]
    @products = @friend.wishlist + @friend.recommended
    @products = @products.uniq
    render 'friends/makeagift', layout: 'friend'
  end

  def gifts
    @friend = User.find_by_id params[:id]
    render 'friends/gifts', layout: 'friend'
  end

end