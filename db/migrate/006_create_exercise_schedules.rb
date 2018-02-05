class CreateExerciseSchedules < ActiveRecord::Migration[4.2]
  def change
    create_table :exercise_schedules do |t|
      t.integer :exercise_id
      t.integer :schedule_id
    end
  end
end
