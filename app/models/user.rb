require 'bcrypt'

class User < ApplicationRecord
  include BCrypt
  validates :email, uniqueness: true
  has_secure_password
  has_many :fightersß

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
