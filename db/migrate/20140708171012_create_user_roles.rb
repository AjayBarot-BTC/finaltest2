class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.integer :role_id
      t.integer :projectdetail_id

      t.timestamps
    end
  end
end
