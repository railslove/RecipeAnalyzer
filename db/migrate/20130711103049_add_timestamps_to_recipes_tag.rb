class AddTimestampsToRecipesTag < ActiveRecord::Migration
  def change
    change_table :recipes_tag do |t|
      t.timestamps
    end
  end
end
