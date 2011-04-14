require "spec_helper"

describe StatesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/states" }.should route_to(:controller => "states", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/states/new" }.should route_to(:controller => "states", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/states/1" }.should route_to(:controller => "states", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/states/1/edit" }.should route_to(:controller => "states", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/states" }.should route_to(:controller => "states", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/states/1" }.should route_to(:controller => "states", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/states/1" }.should route_to(:controller => "states", :action => "destroy", :id => "1")
    end

  end
end
