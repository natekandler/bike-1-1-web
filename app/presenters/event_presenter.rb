class EventPresenter
  def events_serializer events
    ActiveModel::ArraySerializer.new(events, each_serializer: EventSerializer).to_json
  end
end
