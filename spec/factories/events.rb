FactoryGirl.define do
  factory :event do
    request_text "halp"
    lat "41.930467"
    lon "-87.713257"
    requester_id nil
    responder_id nil
  end
end
