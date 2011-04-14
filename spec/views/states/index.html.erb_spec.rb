require 'spec_helper'

describe "states/index.html.erb" do
  before(:each) do
    assign(:states, [
      stub_model(State,
        :name => "Name",
        :abbreviation => "Abbreviation",
        :population => "Population"
      ),
      stub_model(State,
        :name => "Name",
        :abbreviation => "Abbreviation",
        :population => "Population"
      )
    ])
  end

  it "renders a list of states" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Abbreviation".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Population".to_s, :count => 2
  end
end
