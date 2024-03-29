class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:session].has_key?(:username)
      create_admin
    else
      userSearch = GenericUser.unscoped.where(email: params[:session][:email].downcase)
      if (userSearch.size == 1)
        user = userSearch.first
        if (user.banned)
          return redirect_to banned_path(user)
        elsif (user.active)
          if (user.authenticate(params[:session][:password]))
            if not user.deleted
              sign_in user
              return redirect_to root_path
            else
              return redirect_to reactivate_path user.id
            end
          end
        else
          flash['alert alert-error'] = 'Su cuenta no se encuentra activa'
          redirect_to root_url
          return
        end
      end
      flash['alert alert-error'] = 'Email/Contrase&ntilde;a incorrectos'.html_safe
      redirect_to signin_url
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
        redirect_to admins_path
        return
      end
    end
    flash['alert alert-error'] = 'Email/Contrase&ntilde;a incorrectos'.html_safe
    redirect_to admin_login_path
  end

end
