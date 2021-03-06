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

describe TxSectionsController do

  # This should return the minimal set of attributes required to create a valid
  # TxSection. As you add validations to TxSection, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "sid" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TxSectionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all tx_sections as @tx_sections" do
      tx_section = TxSection.create! valid_attributes
      get :index, {}, valid_session
      assigns(:tx_sections).should eq([tx_section])
    end
  end

  describe "GET show" do
    it "assigns the requested tx_section as @tx_section" do
      tx_section = TxSection.create! valid_attributes
      get :show, {:id => tx_section.to_param}, valid_session
      assigns(:tx_section).should eq(tx_section)
    end
  end

  describe "GET new" do
    it "assigns a new tx_section as @tx_section" do
      get :new, {}, valid_session
      assigns(:tx_section).should be_a_new(TxSection)
    end
  end

  describe "GET edit" do
    it "assigns the requested tx_section as @tx_section" do
      tx_section = TxSection.create! valid_attributes
      get :edit, {:id => tx_section.to_param}, valid_session
      assigns(:tx_section).should eq(tx_section)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new TxSection" do
        expect {
          post :create, {:tx_section => valid_attributes}, valid_session
        }.to change(TxSection, :count).by(1)
      end

      it "assigns a newly created tx_section as @tx_section" do
        post :create, {:tx_section => valid_attributes}, valid_session
        assigns(:tx_section).should be_a(TxSection)
        assigns(:tx_section).should be_persisted
      end

      it "redirects to the created tx_section" do
        post :create, {:tx_section => valid_attributes}, valid_session
        response.should redirect_to(TxSection.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved tx_section as @tx_section" do
        # Trigger the behavior that occurs when invalid params are submitted
        TxSection.any_instance.stub(:save).and_return(false)
        post :create, {:tx_section => { "sid" => "invalid value" }}, valid_session
        assigns(:tx_section).should be_a_new(TxSection)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        TxSection.any_instance.stub(:save).and_return(false)
        post :create, {:tx_section => { "sid" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested tx_section" do
        tx_section = TxSection.create! valid_attributes
        # Assuming there are no other tx_sections in the database, this
        # specifies that the TxSection created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        TxSection.any_instance.should_receive(:update).with({ "sid" => "MyString" })
        put :update, {:id => tx_section.to_param, :tx_section => { "sid" => "MyString" }}, valid_session
      end

      it "assigns the requested tx_section as @tx_section" do
        tx_section = TxSection.create! valid_attributes
        put :update, {:id => tx_section.to_param, :tx_section => valid_attributes}, valid_session
        assigns(:tx_section).should eq(tx_section)
      end

      it "redirects to the tx_section" do
        tx_section = TxSection.create! valid_attributes
        put :update, {:id => tx_section.to_param, :tx_section => valid_attributes}, valid_session
        response.should redirect_to(tx_section)
      end
    end

    describe "with invalid params" do
      it "assigns the tx_section as @tx_section" do
        tx_section = TxSection.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TxSection.any_instance.stub(:save).and_return(false)
        put :update, {:id => tx_section.to_param, :tx_section => { "sid" => "invalid value" }}, valid_session
        assigns(:tx_section).should eq(tx_section)
      end

      it "re-renders the 'edit' template" do
        tx_section = TxSection.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TxSection.any_instance.stub(:save).and_return(false)
        put :update, {:id => tx_section.to_param, :tx_section => { "sid" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested tx_section" do
      tx_section = TxSection.create! valid_attributes
      expect {
        delete :destroy, {:id => tx_section.to_param}, valid_session
      }.to change(TxSection, :count).by(-1)
    end

    it "redirects to the tx_sections list" do
      tx_section = TxSection.create! valid_attributes
      delete :destroy, {:id => tx_section.to_param}, valid_session
      response.should redirect_to(tx_sections_url)
    end
  end

end
