require "spec_helper"

describe PositionsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/positions" }.should route_to(:controller => "positions", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/positions/new" }.should route_to(:controller => "positions", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/positions/1" }.should route_to(:controller => "positions", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/positions/1/edit" }.should route_to(:controller => "positions", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/positions" }.should route_to(:controller => "positions", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/positions/1" }.should route_to(:controller => "positions", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/positions/1" }.should route_to(:controller => "positions", :action => "destroy", :id => "1")
    end

  end
end
