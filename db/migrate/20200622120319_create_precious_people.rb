class CreatePreciousPeople < ActiveRecord::Migration[5.2]
  def change
    create_table :precious_people do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :relation_category_id
      t.string :relation_category_name
      t.string :image_file_path
      t.timestamps
    end
  end
end
