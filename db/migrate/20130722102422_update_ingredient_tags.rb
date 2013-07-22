class UpdateIngredientTags < ActiveRecord::Migration

  add_index :ingredients_tags, :ingredient_id
  add_index :ingredients_tags, :tag_id
end
