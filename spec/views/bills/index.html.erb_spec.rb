require 'spec_helper'

describe "bills/index.html.erb" do
  before(:each) do
    assign(:bills, [
      stub_model(Bill,
        :name => "Name",
        :code => "",
        :version => "Version",
        :text => "Text"
      ),
      stub_model(Bill,
        :name => "Name",
        :code => "",
        :version => "Version",
        :text => "Text"
      )
    ])
  end

  it "renders a list of bills" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Version".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Text".to_s, :count => 2
  end
end
