require "rails_helper"

RSpec.describe StoreProfile, :type => :model do
  it "should have a user" do
    user = FactoryGirl.create(:user)
    store_profile = FactoryGirl.create(:store_profile, user: user)

    expect(store_profile.user).to eq user
  end
end
