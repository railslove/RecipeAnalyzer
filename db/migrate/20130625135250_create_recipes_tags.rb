class CreateRecipesTags < ActiveRecord::Migration
    def up
      create_table :recipes_tag, :id => false do |t|
        t.references :recipe, :tag

      end
      add_index :recipes_tag, [:recipe_id, :tag_id]
    end

    def down
      drop_table :recipes_tag
    end
end