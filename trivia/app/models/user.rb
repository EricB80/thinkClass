class User < ActiveRecord::Base
  has_one :team :user_type
  has_many :locations
  validates :email, :presence => true, :message{'You must enter your email'}, :uniqueness, :message{'This email has already registered with us!'}
  validates :user_name, :presence => true, :message{'You must enter a user name!'}, :uniqueness, :message{'This user name is already in use!'}
  validates :password, :presence => true, :message{'You must enter a password'}
  
end
