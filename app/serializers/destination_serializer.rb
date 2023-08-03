class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :location, :country, :image_url
  has_one :user
end
