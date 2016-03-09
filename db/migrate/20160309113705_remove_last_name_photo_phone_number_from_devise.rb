class RemoveLastNamePhotoPhoneNumberFromDevise < ActiveRecord::Migration
  def change
    remove_column :users, :last_name
    remove_column :users, :photo
    remove_column :users, :phone_number
  end
end
