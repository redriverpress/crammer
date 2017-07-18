FactoryGirl.define do
  factory :crammer_class, class: 'Crammer::Class' do
    name { Faker::Lorem.word.capitalize }
    user
  end
end
