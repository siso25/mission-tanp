# == Schema Information
#
# Table name: precious_people
#
#  id                   :bigint           not null, primary key
#  image_file_path      :string
#  name                 :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  relation_category_id :integer
#  user_id              :bigint
#
# Indexes
#
#  index_precious_people_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class PreciousPerson < ApplicationRecord
  belongs_to :user
  has_many :precious_days, dependent: :destroy

  accepts_nested_attributes_for :precious_days

  enum relation: {
    girlfriend:     0,
    boyfriend:      1,
    female_friend:  2,
    male_friend:    3,
    male:           4,
    female:         5,
    husband:        6,
    wife:           7,
    father:         8,
    mother:         9,
    grandmother:    10,
    grandfather:    11
  }
end
