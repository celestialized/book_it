class Schedule < ApplicationRecord

  # Tenant Of
  belongs_to :account, :inverse_of => :schedules
  accepts_nested_attributes_for :account
  
  belongs_to :consultant, :inverse_of => :schedules
  accepts_nested_attributes_for :consultant
  
  has_many :bookings, :inverse_of => :schedule
  accepts_nested_attributes_for :bookings
  
  validates :start, uniqueness: { scope: :consultant_id, message: "You have already made this time available" }
  
  amoeba do
    enable
    exclude_associations :bookings
  end
end
