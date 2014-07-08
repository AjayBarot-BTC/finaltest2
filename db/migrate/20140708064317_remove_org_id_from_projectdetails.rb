class RemoveOrgIdFromProjectdetails < ActiveRecord::Migration
  def change
    remove_column :projectdetails, :org_id, :integer
  end
end
