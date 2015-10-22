require "rails_helper"

RSpec.describe ApiPresenter do
  let(:presenter){ApiPresenter.new}
  it "should return a serialized collection of events" do
    event = FactoryGirl.create(:event, active: true)
    events = [event]
    result = presenter.serialized_active_events
    expect(result).to include event.lat.to_json
  end
end
