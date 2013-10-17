class UsersController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    @user.hobbies = []
    @selected_hobbies = []
    @predefined_hobbies = predefined_hobbies
  end

  def edit
    @user = current_user
    @change_avatar_path = user_change_avatar_path
    @selected_hobbies = predefined_hobbies.map {|ph| ph.name} & @user.hobbies.map { |h| h.name }
    @user.hobbies = @user.hobbies.select {|h| !@selected_hobbies.include?(h.name) }
    @predefined_hobbies = predefined_hobbies
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      if params[:selectedHobbies]
        @user.hobbies.concat(params[:selectedHobbies].map { |h| Hobby.new(name: h) })
      end
      @user.save
      sign_in @user
      redirect_to @user
    else
      @predefined_hobbies = predefined_hobbies
      @selected_hobbies = params[:selectedHobbies]
      render 'new'
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
      if params[:selectedHobbies]
        @user.hobbies.concat(params[:selectedHobbies].map { |h| Hobby.new(name: h) })
      end
      @user.save
      UserMailer.signup_email(@user).deliver
      redirect_to root_path,  alert: msj
    else
      @predefined_hobbies = predefined_hobbies
      @selected_hobbies = params[:selectedHobbies]
      render 'new'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.deleted = true
    @user.save
    redirect_to root_url, alert: "Su cuenta ha sido desactivada, esperamos volverlo a ver pronto!"
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
    @friends = Array.new
    @search = ''
  end

  def search_post
    @search = params[:search]
    @friends = User.any_of({email: /.*#{@search}.*/i}, {first_name: /.*#{@search}.*/i}, {last_name: /.*#{@search}.*/i})
    render 'users/search'
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

  def forgotten_user_post
    user = User.find_by_email params[:email]
    if user == nil
      redirect_to root_path, alert: 'No se encontro ningun usuario con ese email'
    else
      user.password = SecureRandom.urlsafe_base64
      user.save
      UserMailer.forgotten_password(user).deliver
      redirect_to root_path, alert: 'Se ha reiniciado su password'
    end
  end

  def confirm
    @user = GenericUser.find params[:id]
    if @user != nil and @user.signup_token == params[:token]
      @user.active = true
      @user.save
      sign_in @user
      return redirect_to @user, alert: "Felicitaciones, su cuenta ha sido activada!"
    else
      return redirect_to root_url, alert: "No se encontro el usuario"
    end
  end

  def reactivate
    @id = params[:id]
  end

  def reactivatePost
    user = User.where(:id => params[:id]).first
    user.deleted = false
    user.save
    sign_in user
    return redirect_to user
  end

  def disable
    @user = User.find(params[:id])
    @user.banned = true
    @user.banned_reason = params[:user][:banned_reason]
    @user.save
    flash[:info] = "El usuario ha sido deshabilitado."
    UserMailer.inform_state(@user).deliver
    redirect_to admin_user_edit_path
  end

  def enable
    @user = User.find(params[:id])
    @user.banned = false
    @user.banned_reason = nil
    @user.save
    flash[:info] = "El usuario ha sido habilitado."
    UserMailer.inform_state(@user).deliver
    redirect_to admin_user_edit_path
  end

  def birthday_notification
    birthday_users = User.birthday_users
    birthday_users.each do | user | 
      user.friends.each do |friend|
        UserMailer.birthday_notification(user, friend).deliver
      end
    end
  end

  def predefined_hobbies
    predefined_hobbies = []
    predefined_hobbies << PredefinedHobby.new("Deporte",  true)
    predefined_hobbies << PredefinedHobby.new("Futbol",  false)
    predefined_hobbies << PredefinedHobby.new("Basket",  false)
    predefined_hobbies << PredefinedHobby.new("Tenis",  false)
    predefined_hobbies << PredefinedHobby.new("Golf",  false)
    predefined_hobbies << PredefinedHobby.new("Natacion",  false)
    predefined_hobbies << PredefinedHobby.new("Hockey",  false)
    predefined_hobbies << PredefinedHobby.new("Musica",  true)
    predefined_hobbies << PredefinedHobby.new("Pop",  false)
    predefined_hobbies << PredefinedHobby.new("Rock",  false)
    predefined_hobbies << PredefinedHobby.new("Punk",  false)
    predefined_hobbies << PredefinedHobby.new("Folk",  false)
    predefined_hobbies << PredefinedHobby.new("Electronica",  false)
    predefined_hobbies << PredefinedHobby.new("Reggae",  false)
    predefined_hobbies << PredefinedHobby.new("Libros",  true)
    predefined_hobbies << PredefinedHobby.new("Novelas",  false)
    predefined_hobbies << PredefinedHobby.new("Suspenso",  false)
    predefined_hobbies << PredefinedHobby.new("Historia",  false)
    predefined_hobbies << PredefinedHobby.new("Filosofia",  false)
    predefined_hobbies << PredefinedHobby.new("Infantil",  false)
    predefined_hobbies << PredefinedHobby.new("Juvenil",  false)
    predefined_hobbies
  end

end
