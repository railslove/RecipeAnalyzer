class CreateIngredientsTagsTable < ActiveRecord::Migration
  def up
    create_table :ingredients_tags, :id => false do |t|
      t.references :ingredient, :tag

    end
    add_index :ingredients_tags, [:ingredient_id, :tag_id]
  end

  def down
    drop_table :ingredients_tags
  end
end
