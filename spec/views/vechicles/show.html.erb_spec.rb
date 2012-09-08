require 'spec_helper'

describe "vechicles/show" do
  before(:each) do
    @vechicle = assign(:vechicle, stub_model(Vechicle))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
