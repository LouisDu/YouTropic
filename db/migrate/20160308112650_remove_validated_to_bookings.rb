class RemoveValidatedToBookings < ActiveRecord::Migration
  def change
    remove_column :bookings, :validated, :boolean
  end
end
