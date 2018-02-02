class ExercisePlan < ActiveRecord::Base
  belongs_to :plan
  belongs_to :exercise
end
