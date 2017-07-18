FactoryGirl.define do
  factory :user do
    email    { Faker::Internet.unique.email }
    password 'change'
  end
end
