class AddUserIdToUserRole < ActiveRecord::Migration
  def change
    add_column :user_roles, :user_id, :integer
  end
end
