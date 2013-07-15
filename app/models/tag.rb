class Tag < ActiveRecord::Base

  has_many :display_names
  has_many :ingredients, :through => :ingredients_tags
  has_many :recipes, :through => :recipes_tags
  has_many :recipes_tags
  has_many :ingredients_tags

  accepts_nested_attributes_for :display_names

  attr_accessible :title, :body, :display_name_ids , :ingredients, :display_names
end
