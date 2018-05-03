class AddLatitudeAndLongitudeToDropOff < ActiveRecord::Migration[5.1]
  def change
    add_column :drop_offs, :latitude, :float
    add_column :drop_offs, :longitude, :float
  end
end
