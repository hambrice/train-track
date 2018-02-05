class Schedule < ActiveRecord::Base
  belongs_to :plan
  has_many :exercise_schedules
  has_many :exercises, through: :exercise_schedules
end
