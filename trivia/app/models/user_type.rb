class UserType < ActiveRecord::Base
  validates_uniqueness_of :description
end
