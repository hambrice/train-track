class Plan < ActiveRecord::Base
  belongs_to :client
  belongs_to :trainer
  has_many :schedules

  # def scheduler(day)
  #   array = []
  #   self.exercises.each do |exercise|
  #     if exercise.schedule.include?(day)
  #       array << exercise
  #     end
  #   end
  #   array
  # end
end
