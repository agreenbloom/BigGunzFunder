class Pledge < ActiveRecord::Base
  belongs_to :backer, class_name: 'User', foreign_key: 'backer_id'
  belongs_to :project
  belongs_to :reward

  validates :amount, numericality: true
end
