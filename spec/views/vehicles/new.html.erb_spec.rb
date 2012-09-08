require 'spec_helper'

describe "vehicles/new" do
  before(:each) do
    assign(:vehicle, stub_model(Vehicle,
      :make => "MyString",
      :model => "MyString",
      :year => "MyString"
    ).as_new_record)
  end

  it "renders new vehicle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vehicles_path, :method => "post" do
      assert_select "input#vehicle_make", :name => "vehicle[make]"
      assert_select "input#vehicle_model", :name => "vehicle[model]"
      assert_select "input#vehicle_year", :name => "vehicle[year]"
    end
  end
end
