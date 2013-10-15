class StaticPagesController < ApplicationController
  def home
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
