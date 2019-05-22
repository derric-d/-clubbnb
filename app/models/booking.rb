class Booking < ApplicationRecord
  belongs_to :flat
  belongs_to :user

  has_one :review


  # def all_bookings_for_user
  #   self.bookings.map do |booking|
  #   booking.review
  #   end
  # end
  # validates :status, inclusion: { in: ['requested by guest', 'confirmed by host', 'cancelled by guest', 'denied by host', 'paid']}
end
