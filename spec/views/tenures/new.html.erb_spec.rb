require 'spec_helper'

describe "tenures/new.html.erb" do
  before(:each) do
    assign(:tenure, stub_model(Tenure).as_new_record)
  end

  it "renders new tenure form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tenures_path, :method => "post" do
    end
  end
end
