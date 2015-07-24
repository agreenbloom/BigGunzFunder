class Project < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'
  has_many :rewards
  has_many :pledges, through: :rewards
  has_many :backers, through: :pledges, class_name: 'User'

  accepts_nested_attributes_for :rewards, :reject_if => :all_blank, :allow_destroy => true

  validates :goal, presence: true, numericality: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  validate :start_date_cannot_be_in_the_past
  validate :cannot_be_finished_before_start_date
  validate :max_project_duration
  validate :funds_remaining_to_reach_goal

  def days_remaining
    if (DateTime.now.utc > self.start_date)
      (self.end_date.to_date - DateTime.now.to_date).to_i
    else
      (self.start_date.to_date - DateTime.now.to_date).to_i
    end
  end

  def pledges_by_user(user)
    self.pledges.where(backer: user)
  end

  def funds_remaining_to_reach_goal
    self.goal - self.pledges.sum('amount')
  end

  def start_date_cannot_be_in_the_past
    if self.start_date.present? && self.start_date < DateTime.now
      errors.add(start_date, "cannot be in the past.")
    end
  end

  def funds_raised
    self.rewards.sum('amount')
  end

  def funds_remaining_to_reach_goal
    self.goal - self.funds_raised
  end

  def pledges_by_user(user)
    self.pledges.where(backer: user)
  end

  def start_date_cannot_be_in_the_past
    if self.start_date.present? && self.start_date < DateTime.now.utc
      errors.add(self.start_date, "cannot be in the past.")
    end
  end

  def cannot_be_finished_before_start_date
    if self.end_date.present? && self.end_date < self.start_date
      errors.add(self.end_date, "cannot finish before start date")
    end
  end

  def max_project_duration
    if self.end_date.present? && self.start_date.present?
      if (self.end_date - self.start_date) > 1.month
        errors.add(self.end_date, "project can't be longer than 1 month long")
      end
    end
  end

end
