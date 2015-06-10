require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  context "GET index" do
    it "should be success" do
      get :index
      expect(response).to be_success
    end
  end 

end
