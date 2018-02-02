class CreateExercisePlans < ActiveRecord::Migration
  def change
    create_table :exercise_plans do |t|
      t.integer :exercise_id
      t.integer :plan_id
    end
  end
end
