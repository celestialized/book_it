class Consultation < ApplicationRecord
    has_many_attached   :images
    
    has_many :consultants, through: :bookings
    has_many :clients, through: :bookings

    has_many :bookings, inverse_of: :consultations
    accepts_nested_attributes_for :bookings
end
