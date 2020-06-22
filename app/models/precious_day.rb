class PreciousDay < ApplicationRecord
  belongs_to :user
  belongs_to :precious_person
end
