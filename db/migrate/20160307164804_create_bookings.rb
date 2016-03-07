class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :place, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.date :checkin
      t.date :checkout
      t.integer :bill
      t.boolean :validated

      t.timestamps null: false
    end
  end
end
