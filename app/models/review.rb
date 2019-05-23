class Review < ApplicationRecord
  belongs_to :booking, optional: true
  belongs_to :flat


end
