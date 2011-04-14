require 'spec_helper'

describe "bills/new.html.erb" do
  before(:each) do
    assign(:bill, stub_model(Bill,
      :name => "MyString",
      :code => "",
      :version => "MyString",
      :text => "MyString"
    ).as_new_record)
  end

  it "renders new bill form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bills_path, :method => "post" do
      assert_select "input#bill_name", :name => "bill[name]"
      assert_select "input#bill_code", :name => "bill[code]"
      assert_select "input#bill_version", :name => "bill[version]"
      assert_select "input#bill_text", :name => "bill[text]"
    end
  end
end
