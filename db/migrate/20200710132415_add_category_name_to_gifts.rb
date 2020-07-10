class AddCategoryNameToGifts < ActiveRecord::Migration[5.2]
  def change
    add_column :gifts, :category_id, :integer
    add_column :gifts, :category_name, :string
  end
end
