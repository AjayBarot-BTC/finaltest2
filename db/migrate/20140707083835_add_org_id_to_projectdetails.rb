class AddOrgIdToProjectdetails < ActiveRecord::Migration
  def change
    add_column :projectdetails, :org_id, :integer
  end
end
