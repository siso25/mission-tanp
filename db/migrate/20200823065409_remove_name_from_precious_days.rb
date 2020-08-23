class RemoveNameFromPreciousDays < ActiveRecord::Migration[5.2]
  def change
    remove_column :precious_days, :name
  end
end
