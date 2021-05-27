class Boat < ApplicationRecord
  BOAT_TYPE = ['Sailboat', 'Catamaran', 'Motorboat', 'Yacht', 'Rib', 'Canal boat']
  validates :price, presence: true, numericality: { only_integer: true }
  validates :name, presence: true
  validates :location, presence: true
  validates :availability, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true }
  validates :size, presence: true, numericality: { only_integer: true }
  validates :boat_type, presence: true, inclusion: { in: BOAT_TYPE }
  validates :description, presence: true

  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings
  has_many_attached :photos
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
