class Project < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'
  has_many :rewards
  has_many :pledges
  has_many :backers, through: :pledges, class_name: 'User'
end
