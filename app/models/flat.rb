class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  mount_uploader :photo, PhotoUploader
end
