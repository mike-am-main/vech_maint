require 'spec_helper'

describe "vechicles/index" do
  before(:each) do
    assign(:vechicles, [
      stub_model(Vechicle),
      stub_model(Vechicle)
    ])
  end

  it "renders a list of vechicles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
