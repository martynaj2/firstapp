FactoryBot.define do
  factory :post do
    title { Faker::Movie.quote }
    content 'dsadsadasdasdas'
  end
end
