class Pledge < ActiveRecord::Base
  belongs_to :backer, class_name: 'User'
  belongs_to :reward

  delegate :project, to: :reward, allow_nil: true

  validates :backer, presence: true
end
