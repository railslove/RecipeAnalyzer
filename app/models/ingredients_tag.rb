class IngredientsTag < ActiveRecord::Base
  belongs_to :tag
  belongs_to :ingredient

  accepts_nested_attributes_for :tag, :reject_if => :all_blank
  attr_accessible :ingredient_id, :tag_id, :ingredient_attributes, :tag_attributes
end
