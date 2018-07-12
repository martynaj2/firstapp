FactoryBot.define do
  factory :autor do
    name { Faker::Name.first_name }
    surname { Faker::Name.last_name }
    age { Faker::Number.between(10,70) }
  end
end
