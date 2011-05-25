require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe HackersController do

  def mock_hacker(stubs={})
    @mock_hacker ||= mock_model(Hacker, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all hackers as @hackers" do
      Hacker.stub(:all) { [mock_hacker] }
      get :index
      assigns(:hackers).should eq([mock_hacker])
    end
  end

  describe "GET show" do
    it "assigns the requested hacker as @hacker" do
      Hacker.stub(:find).with("37") { mock_hacker }
      get :show, :id => "37"
      assigns(:hacker).should be(mock_hacker)
    end
  end

  describe "GET new" do
    it "assigns a new hacker as @hacker" do
      Hacker.stub(:new) { mock_hacker }
      get :new
      assigns(:hacker).should be(mock_hacker)
    end
  end

  describe "GET edit" do
    it "assigns the requested hacker as @hacker" do
      Hacker.stub(:find).with("37") { mock_hacker }
      get :edit, :id => "37"
      assigns(:hacker).should be(mock_hacker)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created hacker as @hacker" do
        Hacker.stub(:new).with({'these' => 'params'}) { mock_hacker(:save => true) }
        post :create, :hacker => {'these' => 'params'}
        assigns(:hacker).should be(mock_hacker)
      end

      it "redirects to the created hacker" do
        Hacker.stub(:new) { mock_hacker(:save => true) }
        post :create, :hacker => {}
        response.should redirect_to(hacker_url(mock_hacker))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved hacker as @hacker" do
        Hacker.stub(:new).with({'these' => 'params'}) { mock_hacker(:save => false) }
        post :create, :hacker => {'these' => 'params'}
        assigns(:hacker).should be(mock_hacker)
      end

      it "re-renders the 'new' template" do
        Hacker.stub(:new) { mock_hacker(:save => false) }
        post :create, :hacker => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested hacker" do
        Hacker.stub(:find).with("37") { mock_hacker }
        mock_hacker.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :hacker => {'these' => 'params'}
      end

      it "assigns the requested hacker as @hacker" do
        Hacker.stub(:find) { mock_hacker(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:hacker).should be(mock_hacker)
      end

      it "redirects to the hacker" do
        Hacker.stub(:find) { mock_hacker(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(hacker_url(mock_hacker))
      end
    end

    describe "with invalid params" do
      it "assigns the hacker as @hacker" do
        Hacker.stub(:find) { mock_hacker(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:hacker).should be(mock_hacker)
      end

      it "re-renders the 'edit' template" do
        Hacker.stub(:find) { mock_hacker(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested hacker" do
      Hacker.stub(:find).with("37") { mock_hacker }
      mock_hacker.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the hackers list" do
      Hacker.stub(:find) { mock_hacker }
      delete :destroy, :id => "1"
      response.should redirect_to(hackers_url)
    end
  end

end
