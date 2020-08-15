class RemoveUserIdFromPreciousDays < ActiveRecord::Migration[5.2]
  def change
    remove_column :precious_days, :user_id
  end
end
