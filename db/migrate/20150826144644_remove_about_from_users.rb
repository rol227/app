class RemoveAboutFromUsers < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.remove :about 
  	end
  end
end
