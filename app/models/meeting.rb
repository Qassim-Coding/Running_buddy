class Meeting < ApplicationRecord
  belongs_to :user
  has_many :users_meetings
end
