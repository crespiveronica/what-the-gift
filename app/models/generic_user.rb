class GenericUser
  include Mongoid::Document
  include Mongoid::Search
  include Mongoid::Paperclip
  include ActiveModel::SecurePassword

  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :avatar, :signup_token, :active, :deleted
  has_mongoid_attached_file :avatar, :default_url => "/assets/missing.png"
  has_secure_password

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token
  before_create :create_signup_token

  field :email, type: String
  field :password_digest, type: String
  field :active, type: Boolean
  field :deleted, type: Boolean
  field :banned, type: Boolean
  field :banned_reason, type: String
  field :remember_token, type: String
  field :signup_token, type: String

  belongs_to :banned_user, class_name: 'Admin'
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 8 }, :on => :create
  validates :password_confirmation, presence: true, :on => :create

  def is_user?
    self._type == 'User'
  end

  def is_seller?
    self._type == 'Seller'
  end

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end

    def create_signup_token
      self.signup_token = SecureRandom.urlsafe_base64
    end
end
