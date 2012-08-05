class CreateMaintEvents < ActiveRecord::Migration
  def change
    create_table :maint_events do |t|
      t.integer :vehicle_id, :null => false
      t.string :event, :limit => "150", :null => false

      t.timestamps
    end
  add_index :maint_events, [:vehicle_id, :created_at]
  end
end
