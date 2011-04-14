require "spec_helper"

describe UsCodeTitlesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/us_code_titles" }.should route_to(:controller => "us_code_titles", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/us_code_titles/new" }.should route_to(:controller => "us_code_titles", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/us_code_titles/1" }.should route_to(:controller => "us_code_titles", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/us_code_titles/1/edit" }.should route_to(:controller => "us_code_titles", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/us_code_titles" }.should route_to(:controller => "us_code_titles", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/us_code_titles/1" }.should route_to(:controller => "us_code_titles", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/us_code_titles/1" }.should route_to(:controller => "us_code_titles", :action => "destroy", :id => "1")
    end

  end
end
