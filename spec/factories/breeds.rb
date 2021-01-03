FactoryBot.define do
  factory :breed do
    title            { 'タイトル' }
    category_id      { 2 }
    type_name        { '種類名'}
    date             { 2020-01-01 }
    result           { '結果' }
    note             { 'メモ' }

    association :user
    
    after(:build) do |breed|
      breed.image.attach(io: File.open('public/images/test_iamge.png'), filename: 'test_iamge.png')
    end 
  end
end
