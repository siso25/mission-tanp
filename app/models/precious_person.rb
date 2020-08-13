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
class PreciousPerson < ApplicationRecord
  belongs_to :user
  has_many :precious_days, dependent: :destroy

  accepts_nested_attributes_for :precious_days

  enum age: {
    teenager:  0,
    early_twenties: 1,
    late_twenties: 2,
    thirties: 3,
    forties: 4,
    fifties: 5,
    sixties: 6,
    seventies: 7,
    eighties: 8,
    nineties: 9
  }

  enum relation: {
    girlfriend: 0,
    boyfriend: 1,
    female_friend: 2,
    male_friend: 3,
    male: 4,
    female: 5,
    husband: 6,
    wife: 7,
    father: 8,
    mother: 9,
    grandmother: 10,
    grandfather: 11,
    female_boss: 12,
    male_boss: 13,
    female_collegue: 14,
    male_collegue: 15,
    female_university_student: 16,
    male_university_student: 17,
    youger_brother: 18,
    older_brother: 19,
    youger_sister: 20,
    older_sister: 21,
    son: 22,
    daughter: 23,
    nephew: 24,
    babygirl: 25,
    babyboy: 26
  }
end
