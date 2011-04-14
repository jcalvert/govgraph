require 'spec_helper'

describe "us_code_titles/show.html.erb" do
  before(:each) do
    @us_code_title = assign(:us_code_title, stub_model(UsCodeTitle,
      :name => "Name",
      :text => "Text"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Text/)
  end
end
