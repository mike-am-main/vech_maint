class Vehicle < ActiveRecord::Base
  attr_accessible :license_plate, :make, :model, :year
  has_many :maint_events
  has_many :authorized_users
  has_many :users, :through => :authorized_users
end
