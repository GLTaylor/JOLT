class Review < ApplicationRecord
  belongs_to :user
  belongs_to :nde

  validates_associated :user
  validates_associated :nde
  validates :title, presence: true
  validates :body, presence: true
  validates :rating, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
end
