class EventSerializer < ActiveModel::Serializer
  attributes :id, :lat, :lon, :requester_id, :responder_id, :request_text
end
