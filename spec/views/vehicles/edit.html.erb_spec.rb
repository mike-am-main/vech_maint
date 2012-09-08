require 'spec_helper'

describe "vehicles/edit" do
  before(:each) do
    @vehicle = assign(:vehicle, stub_model(Vehicle,
      :make => "MyString",
      :model => "MyString",
      :year => "MyString"
    ))
  end

  it "renders the edit vehicle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vehicles_path(@vehicle), :method => "post" do
      assert_select "input#vehicle_make", :name => "vehicle[make]"
      assert_select "input#vehicle_model", :name => "vehicle[model]"
      assert_select "input#vehicle_year", :name => "vehicle[year]"
    end
  end
end
