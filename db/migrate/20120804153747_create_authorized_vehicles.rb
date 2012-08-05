class CreateAuthorizedVehicles < ActiveRecord::Migration
  def change
    create_table :authorized_vehicles do |t|
      t.integer :user_id, :null => false
      t.integer :vehicle_id, :null => false
      t.string :user_level, :limit => "50", :default => "Driver"
      t.string :pwd

      t.timestamps
    end
    add_index :authorized_vehicles, [:user_id, :created_at]
  end
end
