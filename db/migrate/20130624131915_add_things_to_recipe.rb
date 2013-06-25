class AddThingsToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :ingredient_list, :text
    add_column :recipes, :prep_time, :integer
    add_column :recipes, :number_of_person, :integer
    remove_column :ingredients, :tags
  end
end

