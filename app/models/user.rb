# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  address         :string
#  birth_day       :time
#  email           :string
#  gender          :integer
#  name            :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
    has_many :purchase_record, dependent: :destroy
    has_many :precious_day, dependent: :destroy
    has_many :precious_person, dependent: :destroy
    has_secure_password
    enum gender: { male: 0, female: 1, other: 2 }
end
