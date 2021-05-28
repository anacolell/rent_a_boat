class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable,   :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # add field for first and last name in the form

  has_many :boats
  has_many :reviews, through: :boats
  has_many :bookings
  has_one_attached :photo
  # has_many :photos, dependent: :destroy
end
