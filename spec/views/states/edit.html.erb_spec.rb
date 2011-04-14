require 'spec_helper'

describe "states/edit.html.erb" do
  before(:each) do
    @state = assign(:state, stub_model(State,
      :name => "MyString",
      :abbreviation => "MyString",
      :population => "MyString"
    ))
  end

  it "renders the edit state form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => states_path(@state), :method => "post" do
      assert_select "input#state_name", :name => "state[name]"
      assert_select "input#state_abbreviation", :name => "state[abbreviation]"
      assert_select "input#state_population", :name => "state[population]"
    end
  end
end
