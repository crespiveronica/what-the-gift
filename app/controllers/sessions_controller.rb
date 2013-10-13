class SessionsController < ApplicationController

  def new
  end

  def create
    userSearch = GenericUser.where(email: params[:session][:email].downcase)
    if (userSearch.size == 1)
      user = userSearch.first
      if (user.active)
        if (user.authenticate(params[:session][:password]))
          sign_in user
          return redirect_to user
        end
      else
        redirect_to root_url, alert: 'Su cuenta no se encuentra activa'
        return
      end
    else 
      redirect_to signin_url, alert: 'Email/Contrasena incorrectos'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end

end
