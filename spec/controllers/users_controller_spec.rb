require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  #every time you put in user it will build a factory girl user
  let!(:user) {FactoryGirl.build(:user)}

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe 'create profile' do
    it 'creates a new user' do
      user = { user: {name: 'Armadillo', age: 33, gender: 'male'} }
      post :create, user
    end 
  end   

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end




end
