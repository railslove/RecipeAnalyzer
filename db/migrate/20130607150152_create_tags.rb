class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.references :display_name

      t.timestamps
    end
    add_index :tags, :display_name_id
  end
end
