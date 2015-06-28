class User < ActiveRecord::Base
include Clearance::User

  has_many :requests, foreign_key: :requester_id, class_name: 'Event'
  has_many :responses, foreign_key: :responder_id, class_name: 'Event'

  enum role: [ :rider, :responder, :admin ]

  def full_name
    "#{first_name} #{last_name}"
  end
end
