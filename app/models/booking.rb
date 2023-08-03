class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :travel_package

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :phone, presence: true, numericality: { only_integer: true }
  validates :no_of_people, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :check_in_date, presence: true
  validates :check_out_date, presence: true
end
