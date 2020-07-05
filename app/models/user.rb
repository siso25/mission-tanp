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
end
