require "spec_helper"

describe MetropolisController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/metropolis" }.should route_to(:controller => "metropolis", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/metropolis/new" }.should route_to(:controller => "metropolis", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/metropolis/1" }.should route_to(:controller => "metropolis", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/metropolis/1/edit" }.should route_to(:controller => "metropolis", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/metropolis" }.should route_to(:controller => "metropolis", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/metropolis/1" }.should route_to(:controller => "metropolis", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/metropolis/1" }.should route_to(:controller => "metropolis", :action => "destroy", :id => "1")
    end

  end
end
