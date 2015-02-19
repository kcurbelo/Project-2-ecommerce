require 'bcrypt'
class User < ActiveRecord::Base
  has_secure_password #made available from the bcrypt gem
  has_many :carts
  has_many :jackets, through: :carts
end
