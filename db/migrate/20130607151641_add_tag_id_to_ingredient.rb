class AddTagIdToIngredient < ActiveRecord::Migration
  def change
    add_column :ingredients, :tag, :integer
    add_index :ingredients, :tag
  end
end
