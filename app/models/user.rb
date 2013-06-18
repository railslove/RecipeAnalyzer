class User < ActiveRecord::Base
  has_many :recipes
  attr_accessible :email, :password, :username, :recipe_attributes

end
