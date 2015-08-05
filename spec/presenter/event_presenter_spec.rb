require "rails_helper"

RSpec.describe EventPresenter do
  let(:presenter){EventPresenter.new}
  it "should return a serialized collection of events" do
    event = FactoryGirl.create(:event)
    events = [event]
    result = presenter.events_serializer(events)
    expect(result).to include event.lat.to_json
  end
end
