class Review < ApplicationRecord
  belongs_to :restaurant

  # validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, presence: true,  inclusion: { in: 0..5,
  message: "%{value} is not a valid rating. Please enter a number [0-5]" },
  numericality: { only_integer: true }
end
