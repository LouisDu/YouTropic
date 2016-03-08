class User < ActiveRecord::Base
   has_many :places, dependent: :destroy
   has_many :bookings, dependent: :destroy
   mount_uploader :photo, PhotoUploader

   validates :first_name, presence: true
   validates :last_name, presence: true
   validates :email, presence: true, uniqueness: true
   validates :password, presence: true
   validates :phone_number, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :timeoutable, :lockable
end
