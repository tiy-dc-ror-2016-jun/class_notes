class User < ActiveRecord::Base
  has_secure_password
  # validates :password, confirmation: true
  # validates :password_confirmation, presence: true
  #
  #
  # def password
  #   BCrypt::Password.new(password_digest)
  # end
  #
  # def password=(other)
  #   bcrypt = BCrypt::Password.create(other)
  #   self.password_digest = bcrypt
  # end
end
