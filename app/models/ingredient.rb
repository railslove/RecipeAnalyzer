class Ingredient < ActiveRecord::Base
  has_many :ingredients_tags
  has_many :tags, :through => :ingredients_tags
  has_many :ingredient_names
  attr_accessible :name_EN, :source, :tags


end
