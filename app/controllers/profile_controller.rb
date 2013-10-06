require 'pry'

class ProfileController < ApplicationController

  def index
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end

  def edit_user
  end

  def edit_seller
  end

  def update
    binding.pry
    @user.hobbies.each { |h| h.delete }
    @user.hobbies = []

    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      @user.hobbies.each { |h| h.save }
      redirect_to @user
    else
      render 'edit'
    end
  end

  def change_avatar
    @user = current_user
    if @user.is_user?
      @avatar = params[:user] ? params[:user][:avatar] : nil
    else
      @avatar = params[:seller] ? params[:seller][:avatar] : nil
    end
    @user.update_attributes({ :avatar => @avatar })
    sign_in @user
    redirect_to edit_profile_url
  end
end