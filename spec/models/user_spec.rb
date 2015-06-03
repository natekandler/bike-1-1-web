require "rails_helper"

RSpec.describe User, :type => :model do

  it "should have a role of user" do
    user = FactoryGirl.create(:user)
    expect(user.role).to eq "user"
  end

  it "should have a role of admin" do
    user = FactoryGirl.create(:admin)
    expect(user.role).to eq "admin"
  end
end
