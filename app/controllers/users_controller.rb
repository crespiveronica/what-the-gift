class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    render 'profile/user.html.erb'
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Bienvenido!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

end
