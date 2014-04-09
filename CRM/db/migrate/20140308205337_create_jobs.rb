class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :job_id
      t.integer :sub_job_id
      t.string :job_name
      t.text :job_note
      t.integer :cust_id
      t.integer :owner_id

      t.timestamps
    end
  end
end
