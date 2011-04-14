require 'spec_helper'

describe "us_code_titles/new.html.erb" do
  before(:each) do
    assign(:us_code_title, stub_model(UsCodeTitle,
      :name => "MyString",
      :text => "MyString"
    ).as_new_record)
  end

  it "renders new us_code_title form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => us_code_titles_path, :method => "post" do
      assert_select "input#us_code_title_name", :name => "us_code_title[name]"
      assert_select "input#us_code_title_text", :name => "us_code_title[text]"
    end
  end
end
