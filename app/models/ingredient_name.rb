class IngredientName < ActiveRecord::Base
  belongs_to :locale
  belongs_to :ingredient
  # attr_accessible :title, :body
end
