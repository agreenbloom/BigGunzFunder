class Project < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'
  has_many :rewards
  has_many :pledges
  has_many :backers, through: :pledges, class_name: 'User'

  validates :goal, numericality: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  def raised
    self.pledges.sum("amount")
  end

  def remaining
    total = self.goal - self.raised
    total > 0 ? total : 0
  end
end
