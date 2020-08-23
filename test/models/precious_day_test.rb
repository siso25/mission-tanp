# == Schema Information
#
# Table name: precious_days
#
#  id                 :bigint           not null, primary key
#  image_file_path    :string
#  precious_date      :date
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  precious_person_id :bigint
#  scene_id           :integer
#
# Indexes
#
#  index_precious_days_on_precious_person_id  (precious_person_id)
#
# Foreign Keys
#
#  fk_rails_...  (precious_person_id => precious_people.id)
#
require 'test_helper'

class PreciousDayTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
