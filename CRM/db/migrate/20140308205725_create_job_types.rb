class CreateJobTypes < ActiveRecord::Migration
  def change
    create_table :job_types do |t|
      t.string :job_type_desc

      t.timestamps
    end
  end
end
