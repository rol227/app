class AddEventIdToVips < ActiveRecord::Migration
  def change
    add_reference :vips, :event, index: true, foreign_key: true
  end
end
