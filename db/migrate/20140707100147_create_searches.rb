class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :string
      t.integer :proj_id
      t.integer :org_id

      t.timestamps
    end
  end
end
