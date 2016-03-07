class Category < ActiveRecord::Base
  has_many :places
  validates :name, presence: :true, uniqueness: :true
end
