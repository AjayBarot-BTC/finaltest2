class AddOrgIdToProjectdetails < ActiveRecord::Migration
  def change
    add_column :projectdetails, :org_id, :integer
    rename_column :projectdetails, :org_id, :organization_id
  end
end
