require 'spec_helper'

describe "states/show.html.erb" do
  before(:each) do
    @state = assign(:state, stub_model(State,
      :name => "Name",
      :abbreviation => "Abbreviation",
      :population => "Population"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Abbreviation/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Population/)
  end
end
