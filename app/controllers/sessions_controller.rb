class SessionsController < ApplicationController

  def new
  end

  def create
    userSearch = GenericUser.where(email: params[:session][:email].downcase)
    if (userSearch.size == 1)
      user = userSearch.first
      if (user.active && user.authenticate(params[:session][:password]))
        sign_in userSearch.first
        redirect_to userSearch.first
      end
    end
    flash.now[:error] = 'Email/Contrasena incorrectos' ## no funciona
    render 'new'
  end

  def destroy
    sign_out
    redirect_to root_url
  end

end
