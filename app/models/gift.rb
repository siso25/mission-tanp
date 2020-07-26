# == Schema Information
#
# Table name: gifts
#
#  id               :bigint           not null, primary key
#  brand_image_path :string
#  brand_name       :string
#  category_name    :string
#  explain_text     :text
#  image_file_path  :string
#  name             :string
#  price            :decimal(15, 5)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  brand_id         :integer
#  category_id      :integer
#
class Gift < ApplicationRecord
    has_many :ranking_order, dependent: :destroy
    has_many :puchase_record
end
