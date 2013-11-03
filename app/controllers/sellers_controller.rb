class SellersController < ApplicationController

  def index
  end

  def show
    @user = Seller.find(params[:id])
    @selling_products = @user.selling_products
  end

  def new
    @user = Seller.new
  end

  def edit
    @user = Seller.find(params[:id])
    @change_password_path = seller_password_reset_path
    @change_avatar_path = seller_change_avatar_path
    @update_email_path = update_seller_email_path
  end

  def create
    @user = Seller.new(params[:seller])
    @user.active = false
    msj =  'Felicitaciones, su cuenta ya est&aacute; casi lista. '.html_safe
    msj += 'Se ha enviado un correo electr&oacute;nico a '.html_safe + @user.email + ' para la confirmaci&oacute;n de su cuenta. Presione el link de confirmaci&oacute;n en el e-mail para terminar el proceso de registraci&oacute;n.'.html_safe
    if @user.save
      UserMailer.signup_email(@user).deliver
      flash['alert alert-success'] = msj
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    @user = Seller.find(params[:id])
    if @user.update_attributes params[:seller]
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  def update_mail
    @user = current_user
    @user.new_email = params[:seller][:email]
    @user.save
    sign_in @user
    UserMailer.new_email_email(@user).deliver
    flash['alert alert-success'] = 'Se ha enviado un correo electronico a ' + current_user.new_email + ' para la confirmacion de su nuevo mail.'
    redirect_to root_path
  end

  def destroy
    @user = Seller.find(params[:id])
    @user.active = false
    @user.save
    flash['alert alert-info'] = "Su cuenta ha sido cerrada, esperamos volverlo a ver pronto!"
    redirect_to root_url
  end

  def change_avatar
    @user = current_user
    @avatar = params[:seller] ? params[:seller][:avatar] : nil
    @user.update_attributes({ :avatar => @avatar })
    sign_in @user
    redirect_to edit_seller_path(current_user)
  end

  def disable
    @user = Seller.find(params[:id])
    @user.banned = true
    @user.banned_reason = params[:seller][:banned_reason]
    @user.save
    flash['alert alert-info'] = 'El usuario ha sido deshabilitado.'
    redirect_to admin_seller_edit_path
  end

  def enable
    @user = Seller.find(params[:id])
    @user.banned = false
    @user.banned_reason = nil
    @user.save
    flash['alert alert-success'] = 'El usuario ha sido habilitado.'
    redirect_to admin_seller_edit_path
  end

  def showroom
    @seller = Seller.find(params[:id])
  end

  def update_password
    @user = Seller.find params[:id]
    if @user.update_attributes(params[:seller])
      flash['alert alert-info'] = 'La contrase&ntilde;a se ha cambiado satisfactoriamente'.html_safe
      sign_in @user
    else
      flash['alert alert-error'] = 'No se ha cambiado la contrase&ntilde;a. Debe tener como m&itildenimo de ocho caracteres.'.html_safe
    end
    redirect_to @user
  end

end
