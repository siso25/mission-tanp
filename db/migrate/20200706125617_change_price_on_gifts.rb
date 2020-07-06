class ChangePriceOnGifts < ActiveRecord::Migration[5.2]
  def change
    change_column :gifts, :price, :decimal, precision: 15, scale: 5
  end
end
