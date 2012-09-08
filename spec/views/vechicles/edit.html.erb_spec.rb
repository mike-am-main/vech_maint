require 'spec_helper'

describe "vechicles/edit" do
  before(:each) do
    @vechicle = assign(:vechicle, stub_model(Vechicle))
  end

  it "renders the edit vechicle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vechicles_path(@vechicle), :method => "post" do
    end
  end
end
