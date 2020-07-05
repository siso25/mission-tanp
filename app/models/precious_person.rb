# == Schema Information
#
# Table name: precious_people
#
#  id                     :bigint           not null, primary key
#  image_file_path        :string
#  name                   :string
#  relation_category_name :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  relation_category_id   :integer
#  user_id                :bigint
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
end
