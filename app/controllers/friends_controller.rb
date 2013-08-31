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
end