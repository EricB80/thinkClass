class Jobs < ActiveRecord::Base
  belongs_to :customer
  has_one :job_id :sub_job_id

end
