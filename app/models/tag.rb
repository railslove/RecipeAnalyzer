class Tag < ActiveRecord::Base

  has_many :display_names
  has_many :ingredients, :through => :ingredients_tags
  has_many :recipes, :through => :recipes_tags
  has_many :recipes_tags
  has_many :ingredients_tags

  accepts_nested_attributes_for :ingredients
  accepts_nested_attributes_for :ingredients_tags

  attr_accessible :title, :body, :display_name_ids , :ingredients, :display_names, :ingredient_id, :ingredients_attributes
end
