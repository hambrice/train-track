class ExerciseSchedule < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :plan
end
