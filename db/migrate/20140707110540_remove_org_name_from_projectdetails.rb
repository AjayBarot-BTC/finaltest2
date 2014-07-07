class RemoveOrgNameFromProjectdetails < ActiveRecord::Migration
  def change
    remove_column :projectdetails, :org_name, :string
  end
end
