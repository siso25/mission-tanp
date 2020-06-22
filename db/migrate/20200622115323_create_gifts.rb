class CreateGifts < ActiveRecord::Migration[5.2]
  def change
    create_table :gifts do |t|
      t.string :name
      t.decimal :price
      t.integer :brand_id
      t.string :brand_name
      t.string :image_file_path
      t.timestamps
    end
  end
end
