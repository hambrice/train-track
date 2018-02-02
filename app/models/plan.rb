class Plan < ActiveRecord::Base
  belongs_to :client
  belongs_to :trainer
  has_many :exercise_plans
  has_many :exercises, through: :exercise_plans
end
