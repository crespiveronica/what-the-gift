class StaticPagesController < ApplicationController
  def home
    if current_user != nil and !current_user.respond_to?('_type') #Admin
        redirect_to admins_path
    end
    @user = User.new
  end

  def about
  end

  def contact
  end

  def reactivate
  end

  def banned
    @user = GenericUser.find(params[:id])
  end
end
