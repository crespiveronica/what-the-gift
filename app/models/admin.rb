class Admin
  include Mongoid::Document
  include ActiveModel::SecurePassword

  attr_accessible :username, :email, :password, :password_confirmation
  before_save :create_remember_token
  has_secure_password

  field :username, type: String
  field :email, type: String
  field :password_digest, type: String
  field :remember_token, type: String

  def full_name
    username
  end

  def is_admin?
    self.class.to_s == 'Admin'
  end

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end

end
