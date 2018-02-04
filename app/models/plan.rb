class Plan < ActiveRecord::Base
  belongs_to :client
  belongs_to :trainer
  has_many :exercise_plans
  has_many :exercises, through: :exercise_plans

  def scheduler(day)
    self.exercises.collect do |exercise|
      exercise if exercise.schedule.include?(day)
    end
  end
end
