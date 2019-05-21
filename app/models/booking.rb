class Booking < ApplicationRecord
  belongs_to :flat
  belongs_to :user

  has_one :review

  validates :status, inclusion: { in: ['requested by guest', 'confirmed by host', 'cancelled by guest', 'denied by host', 'paid']}
end
