require 'spec_helper'

describe "organizations/new.html.erb" do
  before(:each) do
    assign(:organization, stub_model(Organization,
      :government => false,
      :nonprofit => false,
      :corporation => false,
      :foreign => false,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new organization form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => organizations_path, :method => "post" do
      assert_select "input#organization_government", :name => "organization[government]"
      assert_select "input#organization_nonprofit", :name => "organization[nonprofit]"
      assert_select "input#organization_corporation", :name => "organization[corporation]"
      assert_select "input#organization_foreign", :name => "organization[foreign]"
      assert_select "input#organization_name", :name => "organization[name]"
    end
  end
end
