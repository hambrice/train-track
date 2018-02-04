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
    # self.update(description: params["description"]) if params["description"] != nil
    # self.update(sets: params["sets"]) if !params["sets"] != nil
    # self.update(reps: params["reps"]) if !params["rep"] != nil
    # self.update(body_region: params["body_region"]) if !params["body_region"] != nil
  end

end

#exercise = Exercise.create(title: "jumprope", description: "jumprope", sets: 9, reps: 10, body_region: "back")
