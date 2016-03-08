class AddTravellerToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :nb_of_traveller, :integer
  end
end
