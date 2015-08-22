class RemoveColumn < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.remove :password_hash
  		t.remove :password_digest
		end
  end
end
