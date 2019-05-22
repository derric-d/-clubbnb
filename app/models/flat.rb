class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def all_reviews_for_flat
    self.bookings.map { |booking| booking.reviews }
  end

  def average_rating
    sum = 0
    reviews = all_reviews_for_flat
    return 0 if reviews == []
    reviews.each do |review|
      sum += review.stars unless review.nil?
    end
    sum / reviews.size
  end

  def sum_rating
    reviews = all_reviews_for_flat
    reviews.count
  end

  has_many :reviews, through: :bookings
  mount_uploader :photo, PhotoUploader

end
