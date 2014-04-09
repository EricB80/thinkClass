class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :user_type
      t.string :email
      t.integer :team_id

      t.timestamps
    end
  end
end
