class Issue < ActiveRecord::Base
  has_one :job_id :sub_job_id :customer :issue_reason_code :customer
end
