class CreateIngredientsNames < ActiveRecord::Migration
  def change
    create_table :ingredients_names do |t|

      t.timestamps
    end

   add_index :ingredients_names, :ingredient_id
  end
end
