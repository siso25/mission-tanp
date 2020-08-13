class ChangeRelationCategoryIdToPreciousPeople < ActiveRecord::Migration[5.2]
  def change
    rename_column :precious_people, :relation_category_id, :relation_id
  end
end
