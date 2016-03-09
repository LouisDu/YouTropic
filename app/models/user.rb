class User < ActiveRecord::Base
   has_many :places, dependent: :destroy
   has_many :bookings, dependent: :destroy
   has_one :profile, dependent: :destroy

   validates :email, presence: true, uniqueness: true
   validates :password, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :timeoutable
end
