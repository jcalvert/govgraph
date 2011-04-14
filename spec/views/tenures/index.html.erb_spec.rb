require 'spec_helper'

describe "tenures/index.html.erb" do
  before(:each) do
    assign(:tenures, [
      stub_model(Tenure),
      stub_model(Tenure)
    ])
  end

  it "renders a list of tenures" do
    render
  end
end
