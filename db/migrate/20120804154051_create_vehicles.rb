class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :license_plate, :limit => "10", :null => false
      t.string :make
      t.string :model
      t.string :year

      t.timestamps
    end
  end
end
