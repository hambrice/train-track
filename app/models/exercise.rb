class Exercise < ActiveRecord::Base
  has_many :exerciseplans
  has_many :plans, through: :exerciseplans
end
