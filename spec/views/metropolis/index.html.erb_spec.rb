require 'spec_helper'

describe "metropolis/index.html.erb" do
  before(:each) do
    assign(:metropolis, [
      stub_model(Metropoli,
        :name => "Name",
        :population => "Population"
      ),
      stub_model(Metropoli,
        :name => "Name",
        :population => "Population"
      )
    ])
  end

  it "renders a list of metropolis" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Population".to_s, :count => 2
  end
end
