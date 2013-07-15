class AddIndexTagsDisplayNames < ActiveRecord::Migration
  def change
    change_table :display_names do |t|
      t.references :tag

    end
    add_index :display_names, :tag_id
  end
end
