class CreateRankingOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :ranking_orders do |t|
      t.references :gift, foreign_key: true
      t.integer :category_id
      t.string :category_name
      t.integer :rank
      t.timestamps
    end
  end
end
