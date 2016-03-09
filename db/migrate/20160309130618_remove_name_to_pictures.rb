class RemoveNameToPictures < ActiveRecord::Migration
  def change
    remove_column :pictures, :name
  end
end
