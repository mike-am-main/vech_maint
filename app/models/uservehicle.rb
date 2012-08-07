class Uservehicle < ActiveRecord::Base
  attr_accessible :user_id, :vehicle_id, :pwd, :user_level
  belongs_to :user
  belongs_to :vehicle
  validates :user_id, presence: true
  validates :vehicle_id, presence: true
end
