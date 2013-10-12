class UserMailer < ActionMailer::Base
  default from: "wtgproject@gmail.com"

  def signup_email(user)
    @user = user
    @link = "http://localhost:3000/confirm/" + @user.id + "/" + @user.signup_token
    mail(to: @user.email, subject: 'Bienvenido a What the Gift?!')
  end

end
