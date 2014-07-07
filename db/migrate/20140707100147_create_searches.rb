class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :string
      t.integer :proj_id
      t.integer :org_id

      t.timestamps
    end
    add_index "searches", ["proj_id"], name: "index_searches_on_proj_id", unique: true, using: :btree
  	add_index "searches", ["proj_id","org_id"], name: "index_searches_on_proj_id_and_org_id", unique: true, using: :btree
  	add_index "searches", ["org_id"], name: "index_searches_on_org_id", unique: true, using: :btree
  end
end
