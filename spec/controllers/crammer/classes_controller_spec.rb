require 'rails_helper'

RSpec.describe Crammer::ClassesController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it 'with valid params' do
      post crammer_classes_path, params: { crammer_class: {name: "English", user_id: 1}}
      assert_response :success
    end
    it 'with invalid params missing user_id' do
      post crammer_classes_path, params: { crammer_class: {name: "English"}}
      it { shouldredirect_to :new }
    end
    it 'with invalid params missing name' do
      post crammer_classes_path, params: { crammer_class: {user_id: 1}}
      it { shouldredirect_to :new }
    end
  end

  describe "GET #index" do
    context 'when user is logged in' do
      it 'renders the classes page' do
        english = FactoryGirl.create(:crammer_class, name: 'English', user_id: 1)
        computer = FactoryGirl.create(:crammer_class, name: 'Computer', user_id: 1)
        get crammer_classes_path
        expect(assigns(:crammer_classes)).to match_array([english, computer])
      end
    end
    context 'when user is logged out' do
      it 'redirects to login page' do
        get crammer_classes_path
        expect(response).to render_template :index
      end
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      get :destroy
      expect(response).to have_http_status(:success)
    end
  end

end
