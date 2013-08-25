class AddTagIdToIngredient < ActiveRecord::Migration
  def change
    add_column :ingredients, :tags, :integer
    add_index :ingredients, :tags
  end
end
