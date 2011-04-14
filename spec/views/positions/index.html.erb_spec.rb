require 'spec_helper'

describe "positions/index.html.erb" do
  before(:each) do
    assign(:positions, [
      stub_model(Position,
        :senate => false,
        :house => false,
        :executive => false,
        :title => "Title"
      ),
      stub_model(Position,
        :senate => false,
        :house => false,
        :executive => false,
        :title => "Title"
      )
    ])
  end

  it "renders a list of positions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
