class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name_EN
      t.string :source

      t.timestamps
    end
  end
end
