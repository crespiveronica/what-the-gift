class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    render 'profile/user.html.erb'
  end

  def new
    @user = User.new
    2.times { @user.hobbies.build }
  end

  def edit
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      @user.hobbies.each { |h| h.save }
      sign_in @user
      flash[:success] = "Bienvenido!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  def friends
    @friends = current_user.friends
    render 'users/friends', layout: 'myfriends'
  end
  
  def show_friend
    @friend = User.find_by_id params[:id]
    @pending_friends = FriendRequest.friends_or_pending(current_user, @friend)
    @request = FriendRequest.find_by_friends(current_user, @friend)
    render 'users/show_friend', layout: 'friend'
  end

  def search
  end
 
 def makeAGift
    @friend = User.find_by_id params[:id]
    @products = @friend.wishlist + @friend.recommended
    @products = @products.uniq
    render 'users/makeagift', layout: 'friend'
  end

  def gifts
    @friend = User.find_by_id params[:id]
    render 'friends/gifts', layout: 'friend'
  end


end
