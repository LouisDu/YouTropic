class AddValidatedToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :validated, :boolean, default: false
  end
end
