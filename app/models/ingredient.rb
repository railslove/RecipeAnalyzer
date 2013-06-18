class Ingredient < ActiveRecord::Base
  has_and_belongs_to_many :tags
  has_many :ingredient_names
  acts_as_taggable_on :tags
  attr_accessible :name_EN, :source
end
