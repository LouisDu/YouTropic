class User < ActiveRecord::Base
  has_many :places, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
