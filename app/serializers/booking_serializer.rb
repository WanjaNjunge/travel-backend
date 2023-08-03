class BookingSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone, :no_of_people, :check_in_date, :check_out_date
  has_one :user
  has_one :travel_package
end
