class Place < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :users, through: :bookings
  has_many :bookings, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :street_changed?
  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :category, presence: true
  validates :capacity, presence: true
  validates :price, presence: true
  # validates :street, presence: true
  # validates :city, presence: true
  # validates :zipcode, presence: true
  # validates :country, presence: true
  validates :description, presence: true
  validates :user, presence: true

  def address
    "#{street} #{city} #{zipcode} #{country}"
  end
end
