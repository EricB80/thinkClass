class Location < ActiveRecord::Base
  belongs_to :user
  has_one :triva_master
  validates_uniqueness_of :name
end
