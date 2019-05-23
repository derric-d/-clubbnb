class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?


  def average_rating
    sum = 0
    # reviews = all_reviews_for_flat
    reviews = self.reviews
    return 0 if reviews == []
    reviews.each do |review|
      sum += review.stars unless review.nil?
    end
    sum / reviews.size
  end

  def sum_rating
    reviews = self.reviews
    reviews.count
  end

  # has_many :reviews, through: :bookings
  mount_uploader :photo, PhotoUploader

end
