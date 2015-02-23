require 'bcrypt'
class User < ActiveRecord::Base
  has_secure_password #made available from the bcrypt gem
  has_many :carts
  has_many :jackets, through: :carts

  e = /\A([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)\z/

  validates :f_name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, format: {with: e}
end
