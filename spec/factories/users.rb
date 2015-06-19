FactoryGirl.define do
  factory :user do
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    email { FFaker::Internet.email }
    city { FFaker::Address.city }
    member_type { FFaker::Lorem.word }
    password 'Password'
  end
end
