class RemoveTagIdFromIngredients < ActiveRecord::Migration
  def up
    #remove_column :ingredients, :tag_id
  end

  def down
    add_column :ingredients, :tag_id, :integer
  end
end
