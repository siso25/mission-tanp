class CreatePreciousDays < ActiveRecord::Migration[5.2]
  def change
    create_table :precious_days do |t|
      t.references :user, foreign_key: true
      t.references :precious_person, foreign_key: true
      t.string :name
      t.time :precious_date
      t.string :image_file_path
      t.timestamps
    end
  end
end
