class AddAboutToVips < ActiveRecord::Migration
  def change
    add_column :vips, :about, :text
    remove_column :vips, :event_id, :references
  end
end
