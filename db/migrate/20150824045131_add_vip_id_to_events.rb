class AddVipIdToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :vip, index: true, foreign_key: true
  end
end
