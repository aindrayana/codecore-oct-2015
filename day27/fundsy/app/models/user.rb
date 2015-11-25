class User < ActiveRecord::Base
  # attr_accessor :password
  has_secure_password

  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  # validates :email, presence: true, format: VALID_EMAIL_REGEX

  validates :email, presence: true, format: VALID_EMAIL_REGEX
  validates :first_name, presence: true
  validates :last_name, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
