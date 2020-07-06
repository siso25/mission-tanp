# == Schema Information
#
# Table name: gifts
#
#  id              :bigint           not null, primary key
#  brand_name      :string
#  image_file_path :string
#  name            :string
#  price           :decimal(15, 5)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  brand_id        :integer
#
require 'test_helper'

class GiftTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
