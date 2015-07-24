class Project < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'
  has_many :rewards
  has_many :pledges, through: :rewards
  has_many :backers, through: :pledges, class_name: 'User'

  accepts_nested_attributes_for :rewards, :reject_if => :all_blank, :allow_destroy => true

  validates :goal, numericality: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  def pledges_by_user(user)
    self.pledges.where(backer: user)
  end

  def funds_raised
    self.rewards.sum('amount')
  end

  def funds_remaining_to_reach_goal
    self.goal - self.funds_raised
  end
end
