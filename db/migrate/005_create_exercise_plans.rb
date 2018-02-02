class CreateExercisePlans < ActiveRecord::Migration[4.2]
  def change
    create_table :exercise_plans do |t|
      t.integer :exercise_id
      t.integer :plan_id
    end
  end
end
