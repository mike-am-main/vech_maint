class AuthorizedVehicle < ActiveRecord::Base
  attr_accessible :pwd, :user_id, :user_level, :vehicle_id
  belongs_to :user
  belongs_to :vehicle
end
