class CreatePlans < ActiveRecord::Migration[4.2]
  def change
    create_table :plans do |t|
      t.integer :trainer_id
      t.integer :client_id
    end
  end
end
