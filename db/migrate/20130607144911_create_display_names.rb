class CreateDisplayNames < ActiveRecord::Migration
  def change
    create_table :display_names do |t|
      t.references :locale
      t.string :text

      t.timestamps
    end
    add_index :display_names, :locale_id
  end
end
