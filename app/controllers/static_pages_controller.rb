class StaticPagesController < ApplicationController
  def home
    if current_user != nil and !current_user.respond_to?('_type') #Admin
        redirect_to admins_path
    end
    @user = User.new
  end

  def about
  end

  def reactivate
  end

  def help
  end

  def help_seller
  end

  def user
  end

  def banned
    @user = GenericUser.unscoped.find(params[:id])
  end
end
