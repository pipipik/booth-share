FactoryBot.define do
  factory :user do
    name                  {Faker::Name.name}
    email                 {Faker::Internet.free_email}
    password              {'1a' + Faker::Internet.password(min_length: 4)}
    password_confirmation {password}
    occupation            {Faker::Number.number(digits: 2)}
    position              {Faker::Job.position}
  end
end
