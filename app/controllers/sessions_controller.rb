class SessionsController < ApplicationController

  def new
  end

  def create
    userSearch = User.where(email: params[:session][:email].downcase)
    if userSearch.size == 1  && userSearch.first.authenticate(params[:session][:password])
      sign_in userSearch.first
      redirect_to userSearch.first
    else
      flash.now[:error] = 'Email/Contrasena incorrectos' ## no funciona
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end

end
