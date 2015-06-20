require "rails_helper"

RSpec.describe User, :type => :model do

  context "Roles" do
    it "should have a role of user" do
      user = FactoryGirl.create(:user)
      expect(user.role).to eq "rider"
    end

    it "should have a role of admin" do
      user = FactoryGirl.create(:admin)
      expect(user.role).to eq "admin"
    end
  end

  context "Events" do
    it "should have many requests" do
      user = FactoryGirl.create(:user)
      event = FactoryGirl.create(:event, requester_id: user.id)

      expect(user.requests).to include event
    end

    it "should have many responses" do
      user = FactoryGirl.create(:user)
      event = FactoryGirl.create(:event, responder_id: user.id)

      expect(user.responses).to include event
    end
  end
end
