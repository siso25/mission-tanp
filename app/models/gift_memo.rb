# == Schema Information
#
# Table name: gift_memos
#
#  id                 :bigint           not null, primary key
#  memo               :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  precious_person_id :bigint
#
# Indexes
#
#  index_gift_memos_on_precious_person_id  (precious_person_id)
#
# Foreign Keys
#
#  fk_rails_...  (precious_person_id => precious_people.id)
#
class GiftMemo < ApplicationRecord
  belongs_to :precious_person
end
