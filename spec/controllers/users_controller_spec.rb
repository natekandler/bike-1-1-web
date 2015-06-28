require 'rails_helper'

RSpec.describe UsersController, type: :controller do
 let(:user){FactoryGirl.create(:user)}
 before(:each){sign_in_as(user)}

  context "GET index" do
    it "should be success" do
      get :index
      expect(response).to be_success
    end
  end 

  context "POST update" do
    it "should update user" do
      post :update, id: user, user: {email: "new@test.org"}
      user.reload
      expect(user.email).to eq "new@test.org"
    end
  end

end
