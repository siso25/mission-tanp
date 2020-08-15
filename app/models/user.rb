# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  address         :string
#  birthday        :date
#  email           :string
#  gender          :integer
#  name            :string
#  password_digest :string
#  phone_number    :string
#  postcode        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
    has_many :purchase_records, dependent: :destroy
    has_many :precious_people, dependent: :destroy
    has_secure_password
    enum gender: { male: 0, female: 1, other: 2 }
end
