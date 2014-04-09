class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :location_id
      t.integer :master_id
      t.datetime :date
      t.string :description

      t.timestamps
    end
  end
end
