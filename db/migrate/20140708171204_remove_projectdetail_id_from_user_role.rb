class RemoveProjectdetailIdFromUserRole < ActiveRecord::Migration
  def change
    remove_column :user_roles, :projectdetail_id, :integer
  end
end
