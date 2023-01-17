FactoryBot.define do
  factory :post do
    association :user

    after(:build) do |post|
      post.image.attach(io: File.open('app/assets/images/924944.png'),filename: '924944.png')
    end 

    content            {Faker::Lorem.sentence}
    month_id        {2}
    day_id          {2}

  end
end