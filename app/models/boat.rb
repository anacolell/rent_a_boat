class Boat < ApplicationRecord
  TYPE = ['sailboat', 'catamaran', 'motorboat', 'yacht', 'rib', 'canal boat']
  validates :price, presence: true, numericality: { only_integer: true }
  validates :name, presence: true
  validates :location, presence: true
  validates :availability, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true }
  validates :size, presence: true, numericality: { only_integer: true }
  validates :type, presence: true, inclusion: { in: TYPE }
  validates :equipment, presence: true
  validates :description, presence: true

  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings
  # has_many :photos, dependent: :destroy
end
