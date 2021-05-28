class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat

  validates :user, presence: true
  validates :boat, presence: true
  validates :start_date, :end_date, presence: true
  # validates :end_date_after_start_date
  # validates :total_price, presence: true, numericality: { only_integer: true }
  # validates :status, presence: true
  # validate :check_availability

  def check_availability
    range_var = (start_date..end_date)
    boat.bookings.each do |booking|
      if !range_var.include?(booking.start_date) || !range_var.include?(booking.end_date)
        next
      else
        errors.add(:base, "Boat is unavailable for those dates.")
      end
    end
  end
end
