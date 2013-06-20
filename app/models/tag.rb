class Tag < ActiveRecord::Base
  has_many :display_names
  has_many :ingredients_tags
  has_many :ingredients, :through => :ingredients_tags


  attr_accessible :title, :body, :display_name_id , :ingredients
end
