class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :nde

  validates_associated :user
  validates_associated :nde
  validates :date, presence: true
  validates :waiver_check, acceptance: true
  validates :guests, presence: true
  validates :status, presence: true

end
