class AddCoordinatesToBunnies < ActiveRecord::Migration[5.2]
  def change
    add_column :bunnies, :latitude, :float
    add_column :bunnies, :longitude, :float
  end
end
