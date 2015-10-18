module Events
  class API < Grape::API
    format :json
    prefix :api

    helpers do
      def current_user
        @current_user ||= User.authorize!(env)
      end

      def authenticate!
        error!('401 Unauthorized', 401) unless current_user
      end

      def api_presenter
        @api_presenter ||= ApiPresenter.new
      end
    end

    resource :events do
      desc 'Return all events'
      get :index do
        api_presenter.serialized_active_events
      end

      desc 'Create an event.'
      params do
        requires :event, type: Hash do
          optional :request_txt, type: String, default: "halps me"
          requires :lat, type: Float, values: -90.0..+90.0
          requires :lon, type: Float, values: -180.0..+180.0
          optional :requester_id, type: Integer
          optional :responder_id, type: Integer
        end
      end

      post :create do
        #authenticate!
        Event.create!({
          #requester_id: current_user.id,
          requester_id: 4,
          request_text: params.event.request_text,
          lat: params.event.lat,
          lon: params.event.lon,
          active: true
        })
      end
    end

  end
end
