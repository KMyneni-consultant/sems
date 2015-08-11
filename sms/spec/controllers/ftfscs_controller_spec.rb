require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe FtfscsController do

  # This should return the minimal set of attributes required to create a valid
  # Ftfsc. As you add validations to Ftfsc, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "ftfc_id" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FtfscsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all ftfscs as @ftfscs" do
      ftfsc = Ftfsc.create! valid_attributes
      get :index, {}, valid_session
      assigns(:ftfscs).should eq([ftfsc])
    end
  end

  describe "GET show" do
    it "assigns the requested ftfsc as @ftfsc" do
      ftfsc = Ftfsc.create! valid_attributes
      get :show, {:id => ftfsc.to_param}, valid_session
      assigns(:ftfsc).should eq(ftfsc)
    end
  end

  describe "GET new" do
    it "assigns a new ftfsc as @ftfsc" do
      get :new, {}, valid_session
      assigns(:ftfsc).should be_a_new(Ftfsc)
    end
  end

  describe "GET edit" do
    it "assigns the requested ftfsc as @ftfsc" do
      ftfsc = Ftfsc.create! valid_attributes
      get :edit, {:id => ftfsc.to_param}, valid_session
      assigns(:ftfsc).should eq(ftfsc)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Ftfsc" do
        expect {
          post :create, {:ftfsc => valid_attributes}, valid_session
        }.to change(Ftfsc, :count).by(1)
      end

      it "assigns a newly created ftfsc as @ftfsc" do
        post :create, {:ftfsc => valid_attributes}, valid_session
        assigns(:ftfsc).should be_a(Ftfsc)
        assigns(:ftfsc).should be_persisted
      end

      it "redirects to the created ftfsc" do
        post :create, {:ftfsc => valid_attributes}, valid_session
        response.should redirect_to(Ftfsc.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved ftfsc as @ftfsc" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ftfsc.any_instance.stub(:save).and_return(false)
        post :create, {:ftfsc => { "ftfc_id" => "invalid value" }}, valid_session
        assigns(:ftfsc).should be_a_new(Ftfsc)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ftfsc.any_instance.stub(:save).and_return(false)
        post :create, {:ftfsc => { "ftfc_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested ftfsc" do
        ftfsc = Ftfsc.create! valid_attributes
        # Assuming there are no other ftfscs in the database, this
        # specifies that the Ftfsc created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Ftfsc.any_instance.should_receive(:update).with({ "ftfc_id" => "MyString" })
        put :update, {:id => ftfsc.to_param, :ftfsc => { "ftfc_id" => "MyString" }}, valid_session
      end

      it "assigns the requested ftfsc as @ftfsc" do
        ftfsc = Ftfsc.create! valid_attributes
        put :update, {:id => ftfsc.to_param, :ftfsc => valid_attributes}, valid_session
        assigns(:ftfsc).should eq(ftfsc)
      end

      it "redirects to the ftfsc" do
        ftfsc = Ftfsc.create! valid_attributes
        put :update, {:id => ftfsc.to_param, :ftfsc => valid_attributes}, valid_session
        response.should redirect_to(ftfsc)
      end
    end

    describe "with invalid params" do
      it "assigns the ftfsc as @ftfsc" do
        ftfsc = Ftfsc.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ftfsc.any_instance.stub(:save).and_return(false)
        put :update, {:id => ftfsc.to_param, :ftfsc => { "ftfc_id" => "invalid value" }}, valid_session
        assigns(:ftfsc).should eq(ftfsc)
      end

      it "re-renders the 'edit' template" do
        ftfsc = Ftfsc.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ftfsc.any_instance.stub(:save).and_return(false)
        put :update, {:id => ftfsc.to_param, :ftfsc => { "ftfc_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested ftfsc" do
      ftfsc = Ftfsc.create! valid_attributes
      expect {
        delete :destroy, {:id => ftfsc.to_param}, valid_session
      }.to change(Ftfsc, :count).by(-1)
    end

    it "redirects to the ftfscs list" do
      ftfsc = Ftfsc.create! valid_attributes
      delete :destroy, {:id => ftfsc.to_param}, valid_session
      response.should redirect_to(ftfscs_url)
    end
  end

end