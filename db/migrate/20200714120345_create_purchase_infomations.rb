class CreatePurchaseInfomations < ActiveRecord::Migration[5.2]
  def change
    create_table :purchase_infomations do |t|
      t.references :user, foreign_key: true
      t.references :gift, foreign_key: true
      t.datetime :purchased_on
      t.integer :quantity
      t.string :cancel_flug
      t.timestamps
    end
  end
end
