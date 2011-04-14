require 'spec_helper'

describe "states/new.html.erb" do
  before(:each) do
    assign(:state, stub_model(State,
      :name => "MyString",
      :abbreviation => "MyString",
      :population => "MyString"
    ).as_new_record)
  end

  it "renders new state form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => states_path, :method => "post" do
      assert_select "input#state_name", :name => "state[name]"
      assert_select "input#state_abbreviation", :name => "state[abbreviation]"
      assert_select "input#state_population", :name => "state[population]"
    end
  end
end
