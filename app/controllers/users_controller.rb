class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    render 'profile/user.html.erb'
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
