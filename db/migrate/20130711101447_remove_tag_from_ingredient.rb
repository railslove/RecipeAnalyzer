class RemoveTagFromIngredient < ActiveRecord::Migration
  def up
    # remove_column :ingredients, :tag
  end

  def down
    add_column :ingredients, :tag, :integer
  end
end
