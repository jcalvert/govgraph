require 'spec_helper'

describe "metropolis/edit.html.erb" do
  before(:each) do
    @metropoli = assign(:metropoli, stub_model(Metropoli,
      :name => "MyString",
      :population => "MyString"
    ))
  end

  it "renders the edit metropoli form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => metropolis_path(@metropoli), :method => "post" do
      assert_select "input#metropoli_name", :name => "metropoli[name]"
      assert_select "input#metropoli_population", :name => "metropoli[population]"
    end
  end
end
