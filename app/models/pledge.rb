class Pledge < ActiveRecord::Base
  belongs_to :backer, class_name: 'User', foreign_key: 'backer_id'
  belongs_to :reward
  delegate :project, to: :reward, allow_nil: true

  validates :amount, numericality: true
end
