# == Schema Information
#
# Table name: precious_days
#
#  id                 :bigint           not null, primary key
#  image_file_path    :string
#  name               :string
#  precious_date      :time
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  precious_person_id :bigint
#  scene_id           :integer
#  user_id            :bigint
#
# Indexes
#
#  index_precious_days_on_precious_person_id  (precious_person_id)
#  index_precious_days_on_user_id             (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (precious_person_id => precious_people.id)
#  fk_rails_...  (user_id => users.id)
#
require 'test_helper'

class PreciousDayTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
