class FriendsController < ApplicationController

  def index
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
    render 'friends/show', layout: 'friend'
  end

  def makeagift
    @products = Product.all
    render 'friends/makeagift', layout: 'friend'
  end

  def gifts
    render 'friends/gifts', layout: 'friend'
  end

  def unfriend
    flash[:success] = 'Se ha eliminado a Jane Doe de sus amigos'
    redirect_to action: 'index'
  end
end