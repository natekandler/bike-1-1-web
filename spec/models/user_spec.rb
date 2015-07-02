require "rails_helper"

RSpec.describe User, :type => :model do

  context "Roles" do
    it "should have a role of user" do
      user = FactoryGirl.create(:user)
      expect(user.rider?).to eq true
    end

    it "should have a role of admin" do
      user = FactoryGirl.create(:admin)
      expect(user.admin?).to eq true
    end

    it "should have a role of store" do
      user = FactoryGirl.create(:responder)
      expect(user.responder?).to eq true
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
