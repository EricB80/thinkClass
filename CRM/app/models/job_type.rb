class JobType < ActiveRecord::Base
  has_many :jobs, through: :job_types
  belongs_to :jobs
  validates :description, presence: true
  validates_uniqueness_of :description
end
