class AddAgeIdToPreciousPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :precious_people, :age_id, :integer
  end
end
