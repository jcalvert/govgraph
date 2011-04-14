require 'spec_helper'

describe "us_code_titles/index.html.erb" do
  before(:each) do
    assign(:us_code_titles, [
      stub_model(UsCodeTitle,
        :name => "Name",
        :text => "Text"
      ),
      stub_model(UsCodeTitle,
        :name => "Name",
        :text => "Text"
      )
    ])
  end

  it "renders a list of us_code_titles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Text".to_s, :count => 2
  end
end
