class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat

  validates :user, presence: true
  validate :boat, presence: true
  validates :start_date, :end_date, presence: true, availability: true
  validate :end_date_after_start_date
  validates :total_price, presence: true, numericality: { only_integer: true }
  validates :status, presence: true
end