FactoryGirl.define do
  factory :user do
    user_name     "Michael Hartl"
    email    "michael@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end