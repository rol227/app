class RemoveEventIdAddAboutToVips < ActiveRecord::Migration
  def change
    change_table :users do |t|
  		t.remove :event_id
  		t.text :about 
  	end
  end
end
