class CreateIngredientsTags < ActiveRecord::Migration
  def change
    create_table :ingredients_tags do |t|

      t.timestamps
    end
  end
end
