# encoding: utf-8
require 'will_paginate/array'

class UsersController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def profile
    render 'users/profile', layout: 'user'
  end

  def wishlist
    render 'users/wishlist', layout: 'user'
  end

  def mygifts
    render 'users/mygifts', layout: 'user'
  end

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
    @update_email_path = update_user_email_path
    @change_password_path = user_password_reset_path
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
      redirect_to profile_path
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

  def update_mail
    existing = GenericUser.where({email: params[:user][:email]}).first
    if existing != nil
      flash['alert alert-error'] = 'El email ' + params[:user][:email] + ' ya se encuentra en uso por otra persona.'
      redirect_to edit_user_path(current_user)
    else
      @user = current_user
      @user.new_email = params[:user][:email]
      @user.save
      sign_in @user
      UserMailer.new_email_email(@user).deliver
      flash['alert alert-success'] = 'Se ha enviado un correo electrónico a ' + current_user.new_email + ' para la confirmación de su nuevo mail.'
      redirect_to root_path
    end
  end

  def create
    @user = User.new(params[:user])
    @user.active = false
    msj =  'Felicitaciones, su cuenta ya está casi lista.'
    msj += 'Se ha enviado un correo electrónico a ' + @user.email + ' para la confirmación de su cuenta. Presione el link de confirmación en el e-mail para terminar el proceso de registración.'
    if @user.save
      if params[:selectedHobbies]
        @user.hobbies.concat(params[:selectedHobbies].map { |h| Hobby.new(name: h) })
      end
      @user.save
      UserMailer.signup_email(@user).deliver
      flash['alert alert-success'] = msj
      redirect_to root_path
    else
      @predefined_hobbies = predefined_hobbies
      @selected_hobbies = params[:selectedHobbies]
      flash['alert alert-error'] = 'Se ha producido un error, inténtelo nuevamente'
      render 'new'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.deleted = true
    @user.save
    flash['alert alert-info'] = "Su cuenta ha sido desactivada, esperamos volverlo a ver pronto!"
    redirect_to root_url
  end

  def friends
    @friends = current_user.friends.paginate(:page => params[:page], :per_page => 12)
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
    @do_search = false
  end

  def search_post
    @search = params[:search]
    searches = @search.split(' ')
    @friends = []
    @do_search = true
    for s in searches do
      @friends += User.any_of({email: /.*#{s}.*/i}, {first_name: /.*#{s}.*/i}, {last_name: /.*#{s}.*/i})
    end
    @friends = @friends.uniq
    render 'users/search'
  end

  def makeAGift
    @friend = User.find_by_id params[:id]
    @products = @friend.wishlist + @friend.recommended
    @products = @products.uniq.paginate(:page => params[:page], :per_page => 30)
    render 'users/makeagift', layout: 'friend'
  end

  def gifts
    @friend = User.find_by_id params[:id]
    render 'users/gifts', layout: 'friend'
  end

  def forgotten_user
    render 'users/forgotten_user'
  end

  def forgotten_user_post
    user = User.find_by_email params[:email]
    if user == nil
      flash['alert alert-error'] =  'No se encontró ningún usuario con ese email.'
      redirect_to root_path
    else
      user.password = SecureRandom.urlsafe_base64
      user.save
      UserMailer.forgotten_password(user).deliver
      flash['alert alert-success'] = 'Se ha reiniciado su password.'
      redirect_to root_path
    end
  end

  def confirm
    @user = GenericUser.find params[:id]
    if @user != nil and @user.signup_token == params[:token]
      @user.active = true
      @user.save
      sign_in @user
      flash['alert alert-success'] = "Felicitaciones, ¡su cuenta ha sido activada!"
      if @user.class.to_s == 'User'
        return redirect_to profile_path
      else
        return redirect_to @user
      end
    else
      flash['alert alert-error'] = "¡No se encontró el usuario"
      return redirect_to root_url
    end
  end

  def confirm_mail
    @user = GenericUser.find params[:id]
    if @user != nil and @user.signup_token == params[:token]
      @user.email = @user.new_email
      @user.save
      sign_in @user
      flash['alert alert-success'] = "Se ha confirmado su nuevo e-mail."
      if @user.class.to_s == 'User'
        return redirect_to profile_path
      else
        return redirect_to @user
      end
    else
      flash['alert alert-error'] = "No se encontró el usuario."
      return redirect_to root_url
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
    return redirect_to root_path
  end

  def birthday_notification
    users = User.all
    users.each do | user |
      if not user.birthday_friends.empty?
        UserMailer.birthday_notification(user).deliver
      end
    end
    render 'birthday_notification_success'
  end

  def predefined_hobbies
    predefined_hobbies = []
    predefined_hobbies << PredefinedHobby.new("Deporte",  true)
    predefined_hobbies << PredefinedHobby.new("Automovilismo",  false)
    predefined_hobbies << PredefinedHobby.new("Futbol",  false)
    predefined_hobbies << PredefinedHobby.new("Basket",  false)
    predefined_hobbies << PredefinedHobby.new("Tenis",  false)
    predefined_hobbies << PredefinedHobby.new("Golf",  false)
    predefined_hobbies << PredefinedHobby.new("Natación",  false)
    predefined_hobbies << PredefinedHobby.new("Hockey",  false)
    predefined_hobbies << PredefinedHobby.new("Voley",  false)

    predefined_hobbies << PredefinedHobby.new("Música",  true)
    predefined_hobbies << PredefinedHobby.new("Música alernativa",  false)
    predefined_hobbies << PredefinedHobby.new("Música de bandas sonoras",  false)
    predefined_hobbies << PredefinedHobby.new("Blues y jazz",  false)
    predefined_hobbies << PredefinedHobby.new("Música clásica",  false)
    predefined_hobbies << PredefinedHobby.new("Cumbia y cuarteto",  false)
    predefined_hobbies << PredefinedHobby.new("Música dance",  false)
    predefined_hobbies << PredefinedHobby.new("Música electrónica",  false)
    predefined_hobbies << PredefinedHobby.new("Folklore",  false)
    predefined_hobbies << PredefinedHobby.new("Funk",  false)
    predefined_hobbies << PredefinedHobby.new("Heavy metal",  false)
    predefined_hobbies << PredefinedHobby.new("Hip hop",  false)
    predefined_hobbies << PredefinedHobby.new("Música Infantil",  false)
    predefined_hobbies << PredefinedHobby.new("Música instrumental",  false)
    predefined_hobbies << PredefinedHobby.new("Karaoke",  false)
    predefined_hobbies << PredefinedHobby.new("Música pop",  false)
    predefined_hobbies << PredefinedHobby.new("Ska",  false)
    predefined_hobbies << PredefinedHobby.new("Reggae",  false)
    predefined_hobbies << PredefinedHobby.new("Rock nacional",  false)
    predefined_hobbies << PredefinedHobby.new("Rock internacional",  false)
    predefined_hobbies << PredefinedHobby.new("Tango",  false)

    predefined_hobbies << PredefinedHobby.new("Libros",  true)
    predefined_hobbies << PredefinedHobby.new("Novelas",  false)
    predefined_hobbies << PredefinedHobby.new("Suspenso",  false)
    predefined_hobbies << PredefinedHobby.new("Filosofia",  false)
    predefined_hobbies << PredefinedHobby.new("Libros infantiles",  false)
    predefined_hobbies << PredefinedHobby.new("Libros juveniles",  false)
    predefined_hobbies << PredefinedHobby.new("Libros de arquitectura",  false)
    predefined_hobbies << PredefinedHobby.new("Libros de arte",  false)
    predefined_hobbies << PredefinedHobby.new("Libros de autoayuda",  false)
    predefined_hobbies << PredefinedHobby.new("Libros de ciencias exactas",  false)
    predefined_hobbies << PredefinedHobby.new("Libros de ciencia ficción",  false)
    predefined_hobbies << PredefinedHobby.new("Libros de arte",  false)

    predefined_hobbies << PredefinedHobby.new("Arte",  true)
    predefined_hobbies << PredefinedHobby.new("Fotografía",  false)
    predefined_hobbies << PredefinedHobby.new("Artesanías",  false)
    predefined_hobbies << PredefinedHobby.new("Antigüedades",  false)

    predefined_hobbies << PredefinedHobby.new("Juegos",  true)
    predefined_hobbies << PredefinedHobby.new("Videojuegos",  false)
    predefined_hobbies << PredefinedHobby.new("Juegos de mesa",  false)
    predefined_hobbies << PredefinedHobby.new("Jueguetes",  false)


    predefined_hobbies << PredefinedHobby.new("Mascotas",  true)
    predefined_hobbies << PredefinedHobby.new("Perros",  false)
    predefined_hobbies << PredefinedHobby.new("Gatos",  false)
    predefined_hobbies << PredefinedHobby.new("Aves",  false)
    predefined_hobbies << PredefinedHobby.new("Conejos",  false)
    predefined_hobbies << PredefinedHobby.new("Peces",  false)
    predefined_hobbies << PredefinedHobby.new("Roedores",  false)

    predefined_hobbies << PredefinedHobby.new("Tecnología",  true)
    predefined_hobbies << PredefinedHobby.new("Celulares",  false)
    predefined_hobbies << PredefinedHobby.new("PC y Portátilas",  false)
    predefined_hobbies << PredefinedHobby.new("Video",  false)
    predefined_hobbies << PredefinedHobby.new("Audio",  false)

    predefined_hobbies << PredefinedHobby.new("Instrumentos musicales",  true)
    predefined_hobbies << PredefinedHobby.new("Guitarra",  false)
    predefined_hobbies << PredefinedHobby.new("Piano",  false)
    predefined_hobbies << PredefinedHobby.new("Batería",  false)

    predefined_hobbies << PredefinedHobby.new("Entretenimiento",  true)
    predefined_hobbies << PredefinedHobby.new("Películas",  false)
    predefined_hobbies << PredefinedHobby.new("Series",  false)

    predefined_hobbies << PredefinedHobby.new("Otros",  true)
    predefined_hobbies << PredefinedHobby.new("Cuidado personal",  false)
    predefined_hobbies << PredefinedHobby.new("Relajación",  false)
    predefined_hobbies << PredefinedHobby.new("Ropa",  false)

    predefined_hobbies
  end

  def update_password
    @user = User.find params[:id]
    if @user.update_attributes(params[:user])
      flash['alert alert-success'] = 'La contraseña se ha cambiado satisfactoriamente.'
      sign_in @user
    else
      flash['alert alert-error'] = 'No se ha cambiado la contraseña. Debe tener como mínimo de ocho caracteres.'
    end
    redirect_to profile_path
  end

end
