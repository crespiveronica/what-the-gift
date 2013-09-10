class SessionsController < ApplicationController

  def new
  end

  def create
    userSearch = User.where(email: params[:session][:email].downcase)
    if userSearch.size > 1  && user.first.authenticate(params[:session][:password])
      sign_in user
      redirect_to user
    else
      render 'new'
     # flash.now[:error] = 'Email/Contrasena incorrectos' ## no funciona
    end
  end

  def destroy
  end

end
