class CreateTrainers < ActiveRecord::Migration[4.2]
  def change
    create_table :trainers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
    end
  end
end
