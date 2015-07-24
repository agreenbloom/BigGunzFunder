class Project < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'
  has_many :rewards
  has_many :pledges, through: :rewards
  has_many :backers, through: :pledges, class_name: 'User'

  accepts_nested_attributes_for :rewards, :reject_if => :all_blank, :allow_destroy => true

  validates :goal, presence: true, numericality: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  validate :cannot_be_in_the_past

  def pledges_by_current_user
    self.pledges.where(backer: @current_user)
  end

  def cannot_be_in_the_past
    if :start_date.present? && :start_date < Date.today
      errors.add(:start_date, "cannot be in the past.")
    end
  end



end
