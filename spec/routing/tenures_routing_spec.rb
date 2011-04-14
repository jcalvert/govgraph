require "spec_helper"

describe TenuresController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/tenures" }.should route_to(:controller => "tenures", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/tenures/new" }.should route_to(:controller => "tenures", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/tenures/1" }.should route_to(:controller => "tenures", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/tenures/1/edit" }.should route_to(:controller => "tenures", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/tenures" }.should route_to(:controller => "tenures", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/tenures/1" }.should route_to(:controller => "tenures", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/tenures/1" }.should route_to(:controller => "tenures", :action => "destroy", :id => "1")
    end

  end
end
