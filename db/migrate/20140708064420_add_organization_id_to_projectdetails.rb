class AddOrganizationIdToProjectdetails < ActiveRecord::Migration
  def change
    add_column :projectdetails, :organization_id, :integer
  end
end
