class AddSceneIdToPreciousDays < ActiveRecord::Migration[5.2]
  def change
    add_column :precious_days, :scene_id, :integer
  end
end
