class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.time :birth_day
      t.integer :gender
      t.string :address
      t.string :email
      t.string :password_digest
      t.timestamps
    end
  end
end
