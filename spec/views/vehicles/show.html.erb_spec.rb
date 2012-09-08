require 'spec_helper'

describe "vehicles/show" do
  before(:each) do
    @vehicle = assign(:vehicle, stub_model(Vehicle,
      :make => "Make",
      :model => "Model",
      :year => "Year"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Make/)
    rendered.should match(/Model/)
    rendered.should match(/Year/)
  end
end
