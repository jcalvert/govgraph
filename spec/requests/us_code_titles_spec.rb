require 'spec_helper'

describe "UsCodeTitles" do
  describe "GET /us_code_titles" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get us_code_titles_path
      response.status.should be(200)
    end
  end
end
