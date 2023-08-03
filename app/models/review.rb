class Review < ApplicationRecord
  belongs_to :user
  belongs_to :travel_package

  validates :name, presence: true
  validates :comment, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
