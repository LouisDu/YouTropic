class User < ActiveRecord::Base
  has_many :places, dependent: :destroy
  has_many :bookings, dependent: :destroy

  validates :frist_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :phone_number, presence: true
end
