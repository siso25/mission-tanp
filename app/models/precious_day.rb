# == Schema Information
#
# Table name: precious_days
#
#  id                 :bigint           not null, primary key
#  image_file_path    :string
#  name               :string
#  precious_date      :date
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
class PreciousDay < ApplicationRecord
  belongs_to :user
  belongs_to :precious_person

  enum scene: {
    birthday: 0,
    anniversary: 1,
    mid_year: 2,
    babygifts: 3,
    wedding: 4,
    marry_anniv: 5,
    fathersday: 6,
    mothersday: 7,
    celebration: 8,
    for_me: 9,
    farewell: 10,
    housewarming: 11,
    graduate: 12,
    job: 13,
    admission: 14,
    surprise: 15,
    uchiiwai: 16,
    propose: 17,
    thanks: 18,
    whiteday: 19,
    party: 20,
    seniorsday: 21,
    retirement: 22,
    sixty: 23,
    valentineday: 24,
    christmas: 25,
    filial_piety: 26,
    improvement: 27,
    opening: 28,
    coming_of_age: 29,
    recovering: 30,
    new_house: 31,
    return_gift_babygifts: 32,
    return_gift_wedding: 33,
    return_gift_others: 34,
  }
end
