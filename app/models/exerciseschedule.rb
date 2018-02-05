class ExerciseSchedule < ActiveRecord::Migration
  belongs_to :exercise
  belongs_to :plan
end
