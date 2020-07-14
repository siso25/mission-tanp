class AddBrandImagePathToGifts < ActiveRecord::Migration[5.2]
  def change
    add_column :gifts, :brand_image_path, :string
    add_column :gifts, :explain_text, :text
  end
end
