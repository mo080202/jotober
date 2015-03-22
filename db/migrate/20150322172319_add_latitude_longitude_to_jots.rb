class AddLatitudeLongitudeToJots < ActiveRecord::Migration
  def change #123.45 precision 5, scale 2
    add_column :jots, :latitude, :decimal, precision: 10, scale: 8
    add_column :jots, :longitude, :decimal, precision: 11, scale: 8
  end
end
