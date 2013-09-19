class FriendsController < ApplicationController

  def index
    @friends = User.all
  	render 'friends/index', layout: 'myfriends'
  end

  def search
  end

  def requests
  	render 'friends/requests', layout: 'myfriends'
  end

  def pending
  	render 'friends/pending', layout: 'myfriends'
  end

  def show
    @friend = User.find_by_id params[:id]
    render 'friends/show', layout: 'friend'
  end

  def makeAGift
    @friend = User.find_by_id params[:id]
    @products = @friend.wishlist + @friend.recommended
    @products.uniq
    render 'friends/makeagift', layout: 'friend'
  end

  def gifts
    @friend = User.find_by_id params[:id]
    render 'friends/gifts', layout: 'friend'
  end

  def unfriend
    flash[:success] = 'Se ha eliminado a Jane Doe de sus amigos'
    redirect_to action: 'index'
  end

end