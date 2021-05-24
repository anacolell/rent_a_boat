class Review < ApplicationRecord
  belongs_to :boat

  validates :boat, presence: true
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }
end
