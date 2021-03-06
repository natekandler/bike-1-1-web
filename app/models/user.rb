class User < ActiveRecord::Base
include Clearance::User
  attr_accessor :password_confirmation

  has_many :requests, foreign_key: :requester_id, class_name: 'Event'
  has_many :responses, foreign_key: :responder_id, class_name: 'Event'
  has_one :store_profile

  enum role: [ :rider, :responder, :admin ]

  def rider?
    self.role == "rider"
  end

  def responder?
    self.role == "responder"
  end

  def admin?
    self.role == "admin"
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
