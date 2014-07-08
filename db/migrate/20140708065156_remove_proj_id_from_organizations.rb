class RemoveProjIdFromOrganizations < ActiveRecord::Migration
  def change
    remove_column :organizations, :proj_id, :integer
  end
end
