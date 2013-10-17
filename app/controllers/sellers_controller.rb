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
    @change_avatar_path = seller_change_avatar_path
  end

  def create
    @user = Seller.new(params[:seller])
    @user.active = false
    msj =  'Felicitaciones, su cuenta ya esta casi lista. '
    msj += 'Se ha enviado un correo electronico a ' + @user.email + ' para la confirmacion de su cuenta. Presione el link de confirmacion en el E-Mail para terminar el proceso de registracion.'
    if @user.save
      UserMailer.signup_email(@user).deliver
      redirect_to root_path,  alert: msj
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
    @user = Seller.find(params[:id])
    @user.active = false
    @user.save
    flash[:success] = "Su cuenta ha sido cerrada, esperamos volverlo a ver pronto!"
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
    redirect_to admin_seller_edit_path, alert: 'El usuario ha sido deshabilitado.'
  end

  def enable
    @user = Seller.find(params[:id])
    @user.banned = false
    @user.banned_reason = nil
    @user.save
    redirect_to admin_seller_edit_path, alert: 'El usuario ha sido habilitado.'
  end

end