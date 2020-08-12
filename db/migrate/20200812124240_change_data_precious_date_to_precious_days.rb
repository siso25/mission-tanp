class ChangeDataPreciousDateToPreciousDays < ActiveRecord::Migration[5.2]
  def change
    remove_column :precious_days, :precious_date
    add_column :precious_days, :precious_date, :date
  end
end
