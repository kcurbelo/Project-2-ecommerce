class Cart < ActiveRecord::Base
  belongs_to :jacket
  belongs_to :user
end
