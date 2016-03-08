class Booking < ActiveRecord::Base
  belongs_to :place
  belongs_to :user

  validates :place, presence: true
  validates :user, presence: true
  validates :checkin, presence: true
  validates :checkout, presence: true
  validates :nb_of_traveller, presence: true
  validates :bill, presence: true
end
