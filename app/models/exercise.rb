require 'pry'
class Exercise < ActiveRecord::Base
  has_many :exercise_schedules
  has_many :schedules, through: :exercise_schedules

  def sets_reps
    "#{self.sets} sets of #{self.reps} repetitions"
  end

end

#exercise = Exercise.create(title: "jumprope", description: "jumprope", sets: 9, reps: 10, body_region: "back")
