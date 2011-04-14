require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe TenuresController do

  def mock_tenure(stubs={})
    @mock_tenure ||= mock_model(Tenure, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all tenures as @tenures" do
      Tenure.stub(:all) { [mock_tenure] }
      get :index
      assigns(:tenures).should eq([mock_tenure])
    end
  end

  describe "GET show" do
    it "assigns the requested tenure as @tenure" do
      Tenure.stub(:find).with("37") { mock_tenure }
      get :show, :id => "37"
      assigns(:tenure).should be(mock_tenure)
    end
  end

  describe "GET new" do
    it "assigns a new tenure as @tenure" do
      Tenure.stub(:new) { mock_tenure }
      get :new
      assigns(:tenure).should be(mock_tenure)
    end
  end

  describe "GET edit" do
    it "assigns the requested tenure as @tenure" do
      Tenure.stub(:find).with("37") { mock_tenure }
      get :edit, :id => "37"
      assigns(:tenure).should be(mock_tenure)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created tenure as @tenure" do
        Tenure.stub(:new).with({'these' => 'params'}) { mock_tenure(:save => true) }
        post :create, :tenure => {'these' => 'params'}
        assigns(:tenure).should be(mock_tenure)
      end

      it "redirects to the created tenure" do
        Tenure.stub(:new) { mock_tenure(:save => true) }
        post :create, :tenure => {}
        response.should redirect_to(tenure_url(mock_tenure))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved tenure as @tenure" do
        Tenure.stub(:new).with({'these' => 'params'}) { mock_tenure(:save => false) }
        post :create, :tenure => {'these' => 'params'}
        assigns(:tenure).should be(mock_tenure)
      end

      it "re-renders the 'new' template" do
        Tenure.stub(:new) { mock_tenure(:save => false) }
        post :create, :tenure => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested tenure" do
        Tenure.stub(:find).with("37") { mock_tenure }
        mock_tenure.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :tenure => {'these' => 'params'}
      end

      it "assigns the requested tenure as @tenure" do
        Tenure.stub(:find) { mock_tenure(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:tenure).should be(mock_tenure)
      end

      it "redirects to the tenure" do
        Tenure.stub(:find) { mock_tenure(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(tenure_url(mock_tenure))
      end
    end

    describe "with invalid params" do
      it "assigns the tenure as @tenure" do
        Tenure.stub(:find) { mock_tenure(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:tenure).should be(mock_tenure)
      end

      it "re-renders the 'edit' template" do
        Tenure.stub(:find) { mock_tenure(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested tenure" do
      Tenure.stub(:find).with("37") { mock_tenure }
      mock_tenure.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the tenures list" do
      Tenure.stub(:find) { mock_tenure }
      delete :destroy, :id => "1"
      response.should redirect_to(tenures_url)
    end
  end

end
