require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe UsCodeTitlesController do

  def mock_us_code_title(stubs={})
    @mock_us_code_title ||= mock_model(UsCodeTitle, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all us_code_titles as @us_code_titles" do
      UsCodeTitle.stub(:all) { [mock_us_code_title] }
      get :index
      assigns(:us_code_titles).should eq([mock_us_code_title])
    end
  end

  describe "GET show" do
    it "assigns the requested us_code_title as @us_code_title" do
      UsCodeTitle.stub(:find).with("37") { mock_us_code_title }
      get :show, :id => "37"
      assigns(:us_code_title).should be(mock_us_code_title)
    end
  end

  describe "GET new" do
    it "assigns a new us_code_title as @us_code_title" do
      UsCodeTitle.stub(:new) { mock_us_code_title }
      get :new
      assigns(:us_code_title).should be(mock_us_code_title)
    end
  end

  describe "GET edit" do
    it "assigns the requested us_code_title as @us_code_title" do
      UsCodeTitle.stub(:find).with("37") { mock_us_code_title }
      get :edit, :id => "37"
      assigns(:us_code_title).should be(mock_us_code_title)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created us_code_title as @us_code_title" do
        UsCodeTitle.stub(:new).with({'these' => 'params'}) { mock_us_code_title(:save => true) }
        post :create, :us_code_title => {'these' => 'params'}
        assigns(:us_code_title).should be(mock_us_code_title)
      end

      it "redirects to the created us_code_title" do
        UsCodeTitle.stub(:new) { mock_us_code_title(:save => true) }
        post :create, :us_code_title => {}
        response.should redirect_to(us_code_title_url(mock_us_code_title))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved us_code_title as @us_code_title" do
        UsCodeTitle.stub(:new).with({'these' => 'params'}) { mock_us_code_title(:save => false) }
        post :create, :us_code_title => {'these' => 'params'}
        assigns(:us_code_title).should be(mock_us_code_title)
      end

      it "re-renders the 'new' template" do
        UsCodeTitle.stub(:new) { mock_us_code_title(:save => false) }
        post :create, :us_code_title => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested us_code_title" do
        UsCodeTitle.stub(:find).with("37") { mock_us_code_title }
        mock_us_code_title.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :us_code_title => {'these' => 'params'}
      end

      it "assigns the requested us_code_title as @us_code_title" do
        UsCodeTitle.stub(:find) { mock_us_code_title(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:us_code_title).should be(mock_us_code_title)
      end

      it "redirects to the us_code_title" do
        UsCodeTitle.stub(:find) { mock_us_code_title(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(us_code_title_url(mock_us_code_title))
      end
    end

    describe "with invalid params" do
      it "assigns the us_code_title as @us_code_title" do
        UsCodeTitle.stub(:find) { mock_us_code_title(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:us_code_title).should be(mock_us_code_title)
      end

      it "re-renders the 'edit' template" do
        UsCodeTitle.stub(:find) { mock_us_code_title(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested us_code_title" do
      UsCodeTitle.stub(:find).with("37") { mock_us_code_title }
      mock_us_code_title.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the us_code_titles list" do
      UsCodeTitle.stub(:find) { mock_us_code_title }
      delete :destroy, :id => "1"
      response.should redirect_to(us_code_titles_url)
    end
  end

end
