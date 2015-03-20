FactoryGirl.define do
  factory :user do
    confirmed_at Time.now
    name "Test User"
    email "test@example.com"
    password "please123"
    phone "5555555555"

    trait :admin do
      role 'admin'
    end

  end
end
