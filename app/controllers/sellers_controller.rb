require 'pry'

class SellersController < ApplicationController

  def index
  end

  def show
    @user = Seller.find(params[:id])
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
    binding.pry
    if @user.save
      sign_in @user
      flash[:success] = "Bienvenido!" # No funciona el flash
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  def change_avatar
    @user = current_user
    @avatar = params[:seller] ? params[:seller][:avatar] : nil
    @user.update_attributes({ :avatar => @avatar })
    sign_in @user
    redirect_to edit_seller_path(current_user)
  end

end