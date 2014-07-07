class AddOrgNameToProjectdetail < ActiveRecord::Migration
  def change
    add_column :projectdetails, :org_name, :string
  end
end
