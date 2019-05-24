class Booking < ApplicationRecord
  belongs_to :flat
  belongs_to :user

  has_many :reviews

  def datepicker_input form, field
    content_tag :td, :data => {:provide => 'datepicker', 'date-format' => 'yyyy-mm-dd', 'date-autoclose' => 'true'} do
      form.text_field field, class: 'form-control', placeholder: 'YYYY-MM-DD'
    end
  end

  validates :move_in_date, presence: true
  validates :move_out_date, presence: true

  # def all_bookings_for_user
  #   self.bookings.map do |booking|
  #   booking.review
  #   end
  # end
  # validates :status, inclusion: { in: ['requested by guest', 'confirmed by host', 'cancelled by guest', 'denied by host', 'paid']}
end
