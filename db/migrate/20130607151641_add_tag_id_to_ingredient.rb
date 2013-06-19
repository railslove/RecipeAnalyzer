class AddTagIdToIngredient < ActiveRecord::Migration
  def change
    add_column :ingredients, :tags, :integers
    add_index :ingredients, :tags
  end
end
