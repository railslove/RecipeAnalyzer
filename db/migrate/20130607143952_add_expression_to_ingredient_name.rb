class AddExpressionToIngredientName < ActiveRecord::Migration
  def change
    add_column :ingredient_names, :expression, :string
  end
end
