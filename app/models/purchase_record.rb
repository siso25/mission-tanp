# == Schema Information
#
# Table name: purchase_records
#
#  id           :bigint           not null, primary key
#  cancel_flug  :string
#  purchased_on :datetime
#  quantity     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  gift_id      :bigint
#  user_id      :bigint
#
# Indexes
#
#  index_purchase_records_on_gift_id  (gift_id)
#  index_purchase_records_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (gift_id => gifts.id)
#  fk_rails_...  (user_id => users.id)
#
class PurchaseRecord < ApplicationRecord
    belongs_to :user
end
