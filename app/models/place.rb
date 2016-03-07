class Place < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :users, through: :bookings
  has_many :pictures, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
