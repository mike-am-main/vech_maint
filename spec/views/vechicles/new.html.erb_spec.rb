require 'spec_helper'

describe "vechicles/new" do
  before(:each) do
    assign(:vechicle, stub_model(Vechicle).as_new_record)
  end

  it "renders new vechicle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vechicles_path, :method => "post" do
    end
  end
end
