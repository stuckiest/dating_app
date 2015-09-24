require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  FactoryGirl.build.create(:user)
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "show user information" do
      get
    end
  end

  describe "GET #new" do
    describe 'create profile' do
    it 'creates a new user' do
      user = User.create()
      expect(user.name).to eq("Factory Girl")
    end
  end
end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

end
