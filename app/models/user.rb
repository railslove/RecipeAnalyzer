class User < ActiveRecord::Base
  has_many :recipes
  attr_accessible :email, :password, :username, :recipes
end
