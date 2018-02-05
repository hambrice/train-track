require 'pry'
class Exercise < ActiveRecord::Base
  has_many :exercise_schedules
  has_many :schedules, through: :exercise_schedules

  def sets_reps
    "#{self.sets} sets of #{self.reps} repetitions"
  end

  def safe_update(params)
    #binding.pry
    self.class.column_names.each do |column|
      if params[column] != "" && column != "id"
        self.update(column.to_sym => params[column])
      end
    end
    self.save
  end

end

#exercise = Exercise.create(title: "jumprope", description: "jumprope", sets: 9, reps: 10, body_region: "back")
