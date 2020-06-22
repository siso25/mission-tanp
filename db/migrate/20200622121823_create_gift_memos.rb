class CreateGiftMemos < ActiveRecord::Migration[5.2]
  def change
    create_table :gift_memos do |t|
      t.references :precious_person, foreign_key: true
      t.string :memo
      t.timestamps
    end
  end
end
