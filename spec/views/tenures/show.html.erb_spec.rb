require 'spec_helper'

describe "tenures/show.html.erb" do
  before(:each) do
    @tenure = assign(:tenure, stub_model(Tenure))
  end

  it "renders attributes in <p>" do
    render
  end
end
