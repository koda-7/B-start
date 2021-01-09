FactoryBot.define do
  factory :information do
    breedname        { 'タイトル' }
    locality         { '産地です' }
    generation_id    { 2 }
    food_id          { 2 }
    memo             { 'メモ' }

    association :breed
  end
end