class Uservehicle < ActiveRecord::Base
  attr_accessible :user_id, :vehicle_id, :pwd, :user_level
  belongs_to :user
  belongs_to :vehicle
  validates :user_id, presence: true
  validates :vehicle_id, presence: true
  # ensures no duplicate vehicles assigned to the same user
  validates_uniqueness_of :user_id, :scope => :vehicle_id
end
