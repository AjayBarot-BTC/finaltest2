class AddProjectdetailIdToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :projectdetail_id, :integer
  end
end
