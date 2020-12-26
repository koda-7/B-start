FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials() }
    email                 { Faker::Internet.free_email }
    password              { 'aaa111'}       
    encrypted_password    { password }  
    profile               { Faker::Lorem.sentence }
  end
end

# dviseを導入しており、暗号化される為,passwordは値を指定