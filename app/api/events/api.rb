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
    end

   resource :events do
      desc 'Return all events'
      get :index do
        Event.all.to_json
      end
    end

  end
end
