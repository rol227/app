class CreateVips < ActiveRecord::Migration
  def change
    create_table :vips do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
