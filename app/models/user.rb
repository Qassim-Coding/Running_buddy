class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :meetings, dependent: :destroy
  has_many :users_meetings, dependent: :destroy
  has_many :relationships_as_asker, class_name: "Relationship", foreign_key: :asker_id
  has_many :relationships_as_receiver, class_name: "Relationship", foreign_key: :receiver_id
  has_many :messages, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :avatar
end
