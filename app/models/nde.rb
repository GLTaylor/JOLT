class Nde < ApplicationRecord
  include PgSearch
  mount_uploader :photo, PhotoUploader

  has_many :bookings
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :city, presence: true
  validates :participant_number, presence: true, numericality: {only_integer: true}
  validates :location, presence: true
  validates :drama, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :price, presence: true, numericality: {only_integer: true}
  pg_search_scope :search_by_query, :against => [:name, :description, :city, :location]
  pg_search_scope :search_by_drama, :against => [:drama]

end
