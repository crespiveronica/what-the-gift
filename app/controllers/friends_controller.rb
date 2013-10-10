class FriendsController < ApplicationController

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
    redirect_to action: 'show_friend', :id => params[:id]
  end

  def accept
    request = FriendRequest.find(params[:id])
    request.accepted = true
    request.save
    redirect_to action: 'users#friends'
  end

  def unfriend    
    request = FriendRequest.find(params[:id])
    friend = request.owner = current_user ? request.owner : request.friend
    request.delete
    flash[:success] = "Se ha eliminado a #{friend.full_name} de sus amigos"
    redirect_to action: 'users#friends'
  end

  def pending
  	render 'friends/pending', layout: 'myfriends'
  end


end