class Reward < ActiveRecord::Base
  belongs_to :project
  has_many :pledges

  def remaining
    self.limit - self.pledges.count
  end
end
