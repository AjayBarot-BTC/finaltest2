class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.references :projectdetails, :status, index: true

      t.timestamps
    end
  end
end
