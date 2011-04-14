require 'spec_helper'

describe "bills/edit.html.erb" do
  before(:each) do
    @bill = assign(:bill, stub_model(Bill,
      :name => "MyString",
      :code => "",
      :version => "MyString",
      :text => "MyString"
    ))
  end

  it "renders the edit bill form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bills_path(@bill), :method => "post" do
      assert_select "input#bill_name", :name => "bill[name]"
      assert_select "input#bill_code", :name => "bill[code]"
      assert_select "input#bill_version", :name => "bill[version]"
      assert_select "input#bill_text", :name => "bill[text]"
    end
  end
end
