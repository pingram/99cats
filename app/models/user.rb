class User < ActiveRecord::Base
  attr_reader :password

  validates :user_name, :session_token, presence: true
  validates :user_name, uniqueness: true
  validates :password_digest, presence: { message: "Password can't be blank" }
  validates :password, length: { minimum: 6, allow_nil: true }
  before_validation :ensure_session_token

  def self.find_by_credentials(user_name, password)
    user = User.find_by_user_name(user_name)
    return nil if user.nil?
    user.is_password?(password) ? user : nil
  end

  def password=(pt)
    @password = pt
    self.password_digest = BCrypt::Password.create(pt)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end

  def reset_session_token!
    self.session_token = self.class.generate_session_token
    self.save!
  end

  private
  def ensure_session_token
    self.session_token ||= self.class.generate_session_token
  end
end
