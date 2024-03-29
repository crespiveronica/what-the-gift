require 'pry'

module SessionsHelper

  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user
  end

  def signed_in?
    !current_user.nil?
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= GenericUser.where(remember_token: cookies[:remember_token]).first || Admin.where(remember_token: cookies[:remember_token]).first
  end

  def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
  end
end
