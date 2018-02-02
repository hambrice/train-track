class CreateClients < ActiveRecord::Migration[4.2]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.integer :trainer_id
    end
  end
end
