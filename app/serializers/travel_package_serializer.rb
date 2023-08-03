class TravelPackageSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image_url, :pricing, :itinerary, :booking_status
  has_one :user
  has_one :destination
end
