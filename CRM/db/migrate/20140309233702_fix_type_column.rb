class FixTypeColumn < ActiveRecord::Migration
  def change
    change_table :job_types do |t|
      t.rename :job_type_desc, :description
    end
  end
end
