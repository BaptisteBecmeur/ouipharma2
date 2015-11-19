class AddCoordinatesToAnnonces < ActiveRecord::Migration
  def change
    add_column :annonces, :latitude, :float
    add_column :annonces, :longitude, :float
  end
end
