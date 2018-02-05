class CreateSchedules < ActiveRecord::Migration[4.2]
  def change
    create_table :schedules do |t|
      t.string :day
      t.integer :plan_id
    end
  end
end
