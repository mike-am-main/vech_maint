class MaintEvent < ActiveRecord::Base
  attr_accessible :event, :vehicle_id
  validates :vehicle_id, presence: true
  belongs_to :vehicle
end
