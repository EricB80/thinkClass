class Team < ActiveRecord::Base
  has_one :location
  has_many :users
  validates_uniqueness_of :name
  validates :name, presence: true
  validates :location, presence: true
end
