# == Schema Information
#
# Table name: precious_people
#
#  id              :bigint           not null, primary key
#  image_file_path :string
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  age_id          :integer
#  relation_id     :integer
#  user_id         :bigint
#
# Indexes
#
#  index_precious_people_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'test_helper'

class PreciousPersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
