FactoryGirl.define do
  factory :user do 
    first_name "homer"
    last_name "simpson"
    sequence(:email) { |n| "email#{n}@test.org"}
    password "password"
    role "user"

    factory :admin do
      role "admin"
    end
  end
end
