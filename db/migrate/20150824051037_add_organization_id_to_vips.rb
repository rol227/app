class AddOrganizationIdToVips < ActiveRecord::Migration
  def change
    add_reference :vips, :organization, index: true, foreign_key: true
  end
end
