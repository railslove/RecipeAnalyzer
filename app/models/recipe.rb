class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :tags, :through => :recipes_tags
  has_many :recipes_tags

  attr_accessible :body, :title, :user_attributes, :image_url
end
