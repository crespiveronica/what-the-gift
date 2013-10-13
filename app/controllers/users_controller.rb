class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    2.times { @user.hobbies.build }
  end

   def edit
    @user = current_user
    @change_avatar_path = user_change_avatar_path
   end

   def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  def change_avatar
    @user = current_user
    @avatar = params[:user] ? params[:user][:avatar] : nil
    @user.update_attributes({ :avatar => @avatar })
    sign_in @user
    redirect_to edit_user_path(current_user)
  end

  def create
    @user = User.new(params[:user])
    @user.active = false
    msj =  'Felicitaciones, su cuenta ya esta casi lista. '
    msj += 'Se ha enviado un correo electronico a ' + @user.email + ' para la confirmacion de su cuenta. Presione el link de confirmacion en el E-Mail para terminar el proceso de registracion.'
    if @user.save
      UserMailer.signup_email(@user).deliver
      sign_in @user
      redirect_to root_path,  alert: msj
    else
      render 'new'
    end
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

  def forgotten_user
    render 'users/forgotten_user'
  end

  def confirm
    @user = User.find_by_id params[:id]
    if @user != nil and @user.signup_token == params[:token]
      @user.active = true
      @user.save
      sign_in @user
      return redirect_to @user, alert: "Felicitaciones, su cuenta ha sido activada!"
    else
      return redirect_to root_url, alert: "No se encontro el usuario"
    end
  end

end
