FactoryBot.define do
  factory :booth do
    prize_name   {Faker::Name.name}
    machine_name {Faker::Name.name}
    category     {Faker::Name.name}

    association :user

    after(:build) do |booth|
      booth.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
