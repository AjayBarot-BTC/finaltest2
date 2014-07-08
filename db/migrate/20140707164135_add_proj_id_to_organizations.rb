class AddProjIdToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :proj_id, :integer
  end
end
