class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :travel_package
end
