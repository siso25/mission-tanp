# == Schema Information
#
# Table name: ranking_orders
#
#  id            :bigint           not null, primary key
#  category_name :string
#  rank          :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  category_id   :integer
#  gift_id       :bigint
#
# Indexes
#
#  index_ranking_orders_on_gift_id  (gift_id)
#
# Foreign Keys
#
#  fk_rails_...  (gift_id => gifts.id)
#
require 'test_helper'

class RankingOrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
