require 'spec_helper'

describe "Metropolis" do
  describe "GET /metropolis" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get metropolis_path
      response.status.should be(200)
    end
  end
end
