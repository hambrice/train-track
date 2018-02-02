class CreateExercises < ActiveRecord::Migration[4.2]
  def change
    create_table :exercises do |t|
      t.string :title
      t.string :description
      t.integer :sets
      t.integer :reps
      t.string :schedule
    end
  end
end
