class Exercise < ActiveRecord::Base
  has_many :exercise_plans
  has_many :plans, through: :exercise_plans

  def sets_reps
    "#{self.sets} sets of #{self.reps} repetitions"
  end

  def safe_update(params)
    binding.pry
    self.update(title: params["name"]) if params["name"] != nil
    self.update(description: params["description"]) if params["description"] != nil
    self.update(sets: params["sets"]) if !params["sets"] != nil
    self.update(reps: params["reps"]) if !params["rep"] != nil
    self.update(body_region: params["body_region"]) if !params["body_region"] != nil
  end

end
