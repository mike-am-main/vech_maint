class Vehicle < ActiveRecord::Base
  attr_accessible :id,:license_plate, :make, :model, :year
  has_many :maint_events
  has_many :uservehicles
  has_many :users, :through => :uservehicles
  default_scope order: 'vehicles.created_at DESC'
end
