require 'spec_helper'

describe Vehicle do
  let(:user) { FactoryGirl.create(:user) }
  before do
    @vehicle = Vehicle.new(license_plate: "TEST")
  end

  subject { @vehicle }

  it { should respond_to(:license_plate) }
    it { should be_valid }


  describe Uservehicle do
#  let(:uservehicle) { FactoryGirl.create(:uservehicle) }
    before do
      # This code is wrong!
      @uservehicle = Uservehicle.new(user_id: user.id, vehicle_id: @vehicle.id)
    end

    subject { @uservehicle }

    it { should respond_to(:user_id) }
    it { should respond_to(:user) }
    its(:user) { should == user }
  end
end
