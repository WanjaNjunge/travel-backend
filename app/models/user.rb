class User < ApplicationRecord
    has_secure_password

    has_many :travel_experiences, dependent: :destroy
    has_many :destinations, dependent: :destroy
    has_many :travel_packages, dependent: :destroy
    has_many :bookings, dependent: :destroy
    has_many :reviews, dependent: :destroy

    validates :username, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true

end
