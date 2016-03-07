class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.references :category, index: true, foreign_key: true
      t.integer :capacity
      t.integer :price
      t.string :street
      t.string :city
      t.string :zipcode
      t.string :country
      t.text :description
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
