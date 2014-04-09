class Answer < ActiveRecord::Base
  belongs_to :question
  has_one :question
  validates :ans_text, presence: true
  validates :correct, presence: true
end
