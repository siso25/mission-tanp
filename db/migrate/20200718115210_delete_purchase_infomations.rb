class DeletePurchaseInfomations < ActiveRecord::Migration[5.2]
  def change
    drop_table :purchase_infomations
  end
end
