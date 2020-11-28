class Consultant < ApplicationRecord
  belongs_to :user, :inverse_of => :consultants
  has_person_name
# Tenant Of
belongs_to :account, :inverse_of => :consultants
accepts_nested_attributes_for :account

belongs_to :user, :inverse_of => :consultants
accepts_nested_attributes_for :user

has_many :bookings, dependent: :destroy, :inverse_of => :consultant
accepts_nested_attributes_for :bookings

has_many :consultatations, :through => :bookings

has_many :consultatation_payments, :through => :bookings

has_many :schedules, dependent: :destroy, :inverse_of => :consultant
accepts_nested_attributes_for :schedules



  def email
    User.find_by_id(self.user_id)
  end
end
