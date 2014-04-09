class Events < ActiveRecord::Base
  belongs_to :location
  has_one :location :master_id
  has_many :quizzes
  validates :date, presence: true
  validates :description, presence: true
end
