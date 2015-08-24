class AddUserIdToOrganizations < ActiveRecord::Migration
  def change
    add_reference :organizations, :user, index: true, foreign_key: true
  end
end
