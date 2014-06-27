class CreateProjectdetails < ActiveRecord::Migration
  def change
    create_table :projectdetails do |t|
      t.string :proj_name
      t.string :proj_code
      t.string :proj_desc
      t.string :biling_type
      t.string :start_date
      t.string :dead_line_date
      t.string :end_date
      t.string :github_url
      t.string :status

      t.timestamps
    end
  end
end
