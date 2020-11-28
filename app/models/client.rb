class Client < ApplicationRecord
  has_person_name
  
  # Tenant Of
belongs_to :account, :inverse_of => :clients
accepts_nested_attributes_for :account

belongs_to :user, :inverse_of => :clients
accepts_nested_attributes_for :user

has_many :bookings, dependent: :destroy, :inverse_of => :client
accepts_nested_attributes_for :bookings

has_many :consultatations, :through => :bookings

has_many :consultatation_payments, :through => :bookings


end
