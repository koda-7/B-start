FactoryBot.define do
  factory :more_information do
    number    { 1 }
    size      { 90 }
    sex_id    { 1 }
    birthday  { 2020-01-01 }
    memos     { 'メモ' }

    association :information
  end
end