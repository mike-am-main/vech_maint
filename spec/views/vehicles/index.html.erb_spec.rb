require 'spec_helper'

describe "vehicles/index" do
  before(:each) do
    assign(:vehicles, [
      stub_model(Vehicle,
        :make => "Make",
        :model => "Model",
        :year => "Year"
      ),
      stub_model(Vehicle,
        :make => "Make",
        :model => "Model",
        :year => "Year"
      )
    ])
  end

  it "renders a list of vehicles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Make".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
  end
end
