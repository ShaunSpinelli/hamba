class AddLatitudeAndLongitudeToPickUp < ActiveRecord::Migration[5.1]
  def change
    add_column :pick_ups, :latitude, :float
    add_column :pick_ups, :longitude, :float
  end
end
