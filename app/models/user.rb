class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include PgSearch::Model
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
  has_many_attached :photos

  pg_search_scope :search_by_city, against: :address,
  using: {
    tsearch: { prefix: true }
  }

  pg_search_scope :search_by_pace, against: :running_pace,
  using: {
    tsearch: { prefix: true }
  }
  def city
    address.split(',')[1].strip
    # permet au filtre de prendre la ville de l'User qui est en 2e position dans la string adress !
  end
  scope :order_by_city_asc, -> { all.sort_by(&:city) }
  # récupère toutes les villes, les tries par ordres croissants et les retourne
  scope :order_by_city_desc, -> { all.sort_by(&:city).reverse }
  # récupère toutes les villes, les tries par ordres decroissants et les retourne
  def running_pace_minute_and_second
    "#{running_pace / 60}:#{running_pace % 60}"
  end

end
