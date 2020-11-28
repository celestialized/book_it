class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :masqueradable, :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :omniauthable

  has_one_attached :avatar
  has_one :user_time_zone
  has_person_name

  has_many :notifications, as: :recipient
  has_many :services

  has_many :clients
  # has_many :consultants
end
