class CreateIngredientNames < ActiveRecord::Migration
  def change
    create_table :ingredient_names do |t|
      t.references :locale

      t.timestamps
    end
    add_index :ingredient_names, :locale_id
  end
end
