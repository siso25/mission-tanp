class RemoveRelationCategoryNameFromPreciousPeople < ActiveRecord::Migration[5.2]
  def change
    remove_column :precious_people, :relation_category_name
  end
end
