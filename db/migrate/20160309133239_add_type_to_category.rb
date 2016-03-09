class AddTypeToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :mer, :boolean
    add_column :categories, :terre, :boolean
    add_column :categories, :air, :boolean
  end
end
