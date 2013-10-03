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

  def change_avatar
    @user = current_user
    @avatar = params[:user] ? params[:user][:avatar] : nil
    @user.update_attributes({ :avatar => @avatar })
    sign_in @user
    redirect_to edit_profile_url
  end
end