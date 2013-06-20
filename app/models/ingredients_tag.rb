class IngredientsTag < ActiveRecord::Base
  belongs_to :tag
  belongs_to :ingredient
end
