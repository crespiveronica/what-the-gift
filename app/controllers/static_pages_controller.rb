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
end
