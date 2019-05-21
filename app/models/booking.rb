class Booking < ApplicationRecord
  belongs_to :flat
  belongs_to :user
  has_one :review
end
