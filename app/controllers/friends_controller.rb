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
    flash['alert alert-success'] = 'La solicitud ha sido enviada con &eacute;xito, aguarde la confirmaci&oacute;n del usuario'.html_safe
    redirect_to show_friend_path, :id => params[:id]
  end

  def accept
    request = FriendRequest.find(params[:id])
    request.accepted = true
    request.save
    flash['alert alert-success'] = 'Has aceptado la solicitud de amistad de ' + request.owner.full_name
    redirect_to friend_requests_path
  end

  def unfriend
    do_unfriend('Ya no eres amigo de ')
    redirect_to friend_requests_path
  end

  def reject
    do_unfriend('Has rechazado la solicitud de amistad de ')
    redirect_to friend_requests_path
  end

  def do_unfriend msg
    request = FriendRequest.find(params[:id])
    friend = request.owner != current_user ? request.owner : request.friend
    request.delete
    flash['alert alert-error'] = msg + friend.full_name
  end

  def pending
  	render 'friends/pending', layout: 'myfriends'
  end


end
