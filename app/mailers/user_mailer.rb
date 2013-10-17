class UserMailer < ActionMailer::Base
  default from: "wtgproject@gmail.com"

  def signup_email(user)
    @user = user
    @link = "http://localhost:3000/confirm/" + @user.id + "/" + @user.signup_token
    mail(to: @user.email, subject: 'Bienvenido a What the Gift?!')
  end

  def new_email_email(user)
    @user = user
    @link = "http://localhost:3000/confirm-mail/" + @user.id + "/" + @user.signup_token
    mail(to: @user.new_email, subject: 'Confirme su nuevo mail')
  end

  def forgotten_password(user)
  	@user = user
  	mail(to: @user.email, subject: 'Nueva password')
  end

  def inform_state(user)
    @user = user
    mail(to: @user.email, subject: 'Se ha cambiado su estado')
  end

  def birthday_notification(user, friend)
    @user = user
    @friend = friend
    @gifts = @user.wishlist + @user.recommended
    @link_friend = "http://localhost:3000/friends/" + user.id
    @link_gift = "http://localhost:3000/products/"
    mail(to: @friend.email, subject: "Se acerca el cumpleanios de #{@user.full_name}!")
  end

end
