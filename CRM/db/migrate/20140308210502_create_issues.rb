class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.integer :issues_reason_code
      t.text :issue_note
      t.date :issue_date
      t.integer :issue_resolved
      t.text :issue_res_note
      t.integer :issue_res_code
      t.integer :job_id
      t.integer :sub_job_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
