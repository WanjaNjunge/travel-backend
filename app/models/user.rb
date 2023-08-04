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

    enum role: { traveller: 0, tour_operator: 1, admin: 2 }

    def admin?
        role == 'admin'
    end
    
    def tour_operator?
        role == 'tour_operator'
    end
    
    def traveller?
        role == 'traveller'
    end

end
