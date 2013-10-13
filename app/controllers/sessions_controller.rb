require 'pry'

class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:session].has_key?(:username)
      create_admin
    else
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
      end
      redirect_to signin_url, alert: 'Email/Contrasena incorrectos'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end

  def create_admin
    adminSearch = Admin.where(username: params[:session][:username].downcase)
    if (adminSearch.size == 1)
      admin = adminSearch.first
      if admin.authenticate(params[:session][:password])
        sign_in admin
        redirect_to user_edit_path
        return
      end
    end
  end

end
