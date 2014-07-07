class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :org_name
      t.string :org_country

      t.timestamps

      add_index :organizations, :org_name, unique: true
    end
  end
end
