class Exercise < ActiveRecord::Base
  has_many :exercise_plans
  has_many :plans, through: :exercise_plans

  def sets_reps
    "#{self.sets} sets of #{self.reps} repititions"
  end
end
