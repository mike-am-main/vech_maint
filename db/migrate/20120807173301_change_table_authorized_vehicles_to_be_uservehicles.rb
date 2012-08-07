class ChangeTableAuthorizedVehiclesToBeUservehicles < ActiveRecord::Migration
  def change
    rename_table :authorized_vehicles, :uservehicles        
  end
end
