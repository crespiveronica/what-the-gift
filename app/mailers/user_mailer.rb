class UserMailer < ActionMailer::Base
  default from: "wtgproject@gmail.com"

  def signup_email(user)
    @user = user
    @url = 'http://what-the-gift.com'
    @headerImage = @url + '/assets/email-header.png'
    @link = "http://what-the-gift.com/confirm/" + @user.id + "/" + @user.signup_token
    mail(to: @user.email, subject: 'Bienvenido a What the Gift?!')
  end

  def new_email_email(user)
    @user = user
    @url = 'http://what-the-gift.com'
    @headerImage = @url + '/assets/email-header.png'
    @link = "http://what-the-gift.com/confirm-mail/" + @user.id + "/" + @user.signup_token
    mail(to: @user.new_email, subject: 'Confirme su nuevo mail')
  end

  def forgotten_password(user)
  	@user = user
    @url = 'http://what-the-gift.com'
    @headerImage = @url + '/assets/email-header.png'
  	mail(to: @user.email, subject: 'Nueva password')
  end

  def inform_state(user)
    @user = user
    @url = 'http://what-the-gift.com'
    @headerImage = @url + '/assets/email-header.png'
    mail(to: @user.email, subject: 'Se ha cambiado su estado')
  end

  def birthday_notification(user)
    @user = user
    @friends = user.birthday_friends
    @url = 'http://what-the-gift.com'
    @headerImage = @url + '/assets/email-header.png'
    @link_friend = @url + "/friends/"
    @link_gift = @url + "/products/"
    mail(to: user.email, subject: "Se acercan nuevos cumpleaños")
  end

end
