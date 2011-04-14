require 'spec_helper'

describe "cities/show.html.erb" do
  before(:each) do
    @city = assign(:city, stub_model(City,
      :name => "Name",
      :population => "Population"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Population/)
  end
end
