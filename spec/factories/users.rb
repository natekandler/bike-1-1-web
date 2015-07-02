FactoryGirl.define do
  factory :user do 
    first_name "homer"
    last_name "simpson"
    sequence(:email) { |n| "email#{n}@test.org"}
    password "password"
    role "rider"

    factory :responder do
      role "responder"
    end

    factory :admin do
      role "admin"
    end
  end
end
