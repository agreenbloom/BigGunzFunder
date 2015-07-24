class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :password, length: { minimum: 3 }, on: :create
  validates :password, confirmation: true, on: :create
  validates :password_confirmation, presence: true, on: :create

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true

  has_many :pledges, foreign_key: 'backer_id'
  has_many :rewards, through: :pledges

  has_many :owned_projects, class_name: 'Project', foreign_key: 'owner_id'
  has_many :backed_projects, through: :pledges, source: :backer

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def total_pledges
    self.rewards.sum('amount')
  end




end
