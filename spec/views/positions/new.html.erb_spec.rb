require 'spec_helper'

describe "positions/new.html.erb" do
  before(:each) do
    assign(:position, stub_model(Position,
      :senate => false,
      :house => false,
      :executive => false,
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new position form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => positions_path, :method => "post" do
      assert_select "input#position_senate", :name => "position[senate]"
      assert_select "input#position_house", :name => "position[house]"
      assert_select "input#position_executive", :name => "position[executive]"
      assert_select "input#position_title", :name => "position[title]"
    end
  end
end
