class ApiPresenter
  def serialized_active_events
    active_events = Event.where(active: true)
    ActiveModel::ArraySerializer.new(active_events, each_serializer: EventSerializer).to_json
  end
end
