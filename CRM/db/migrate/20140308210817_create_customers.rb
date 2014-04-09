class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address1
      t.string :adress2
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :phone
      t.string :email
      t.integer :owner_id

      t.timestamps
    end
  end
end
