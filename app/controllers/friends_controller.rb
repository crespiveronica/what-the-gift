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
    redirect_to show_friend_path, :id => params[:id], alert: 'La solicitud ha sido enviada con éxito, aguarde la confirmación del usuario'
  end

  def accept
    request = FriendRequest.find(params[:id])
    request.accepted = true
    request.save
    redirect_to friend_requests_path, alert: 'Has aceptado la solicitud de amistad de ' + request.owner.full_name
  end

  def unfriend    
    request = FriendRequest.find(params[:id])
    friend = request.owner = current_user ? request.owner : request.friend
    request.delete
    redirect_to friend_requests_path, alert: 'Has rechazado la solicitud de amistad de ' + request.owner.full_name
  end

  def pending
  	render 'friends/pending', layout: 'myfriends'
  end


end