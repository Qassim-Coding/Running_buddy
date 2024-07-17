class Message < ApplicationRecord
  belongs_to :user
  belongs_to :relationship

  has_one :receiver, through: :relationship, source: :user
end
