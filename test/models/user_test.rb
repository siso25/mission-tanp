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
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
