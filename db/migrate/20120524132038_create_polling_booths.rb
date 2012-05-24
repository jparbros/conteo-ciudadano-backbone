class CreatePollingBooths < ActiveRecord::Migration
  def change
    create_table :polling_booths do |t|
      t.string :address
      t.string :location
      t.string :references
      t.integer :state_id
      t.integer :section
      t.integer :nominal_list
      t.string :type
      t.integer :distric
      t.string :district_head

      t.timestamps
    end
  end
end
