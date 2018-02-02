class Exercise < ActiveRecord::Base
  has_many :exercise_plans
  has_many :plans, through: :exercise_plans
end
