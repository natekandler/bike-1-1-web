require 'spec_helper'

describe Events::API do
  include Rack::Test::Methods

  def app
    Events::API
  end

  context 'GET /api/events/index' do
    it 'returns events as json' do
      get '/api/events/index'
      events = Event.where(active: true)
      expect(last_response.status).to eq(200)
      expect(last_response.body).to include events.first.id.to_s
    end
  end

  context "POST /api/events/create" do
    it "creates and event" do
      event = {event: {request_text: "yo", lat: 46.0, lon: -87.0}}

      post "/api/events/create", event.to_json, 'CONTENT_TYPE' => 'application/json' 

      expect(last_response.status).to eq 201
      expect(Event.last.request_text).to eq "yo"
    end
  end

end
