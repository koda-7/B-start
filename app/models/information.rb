class Information < ApplicationRecord
  belongs_to :user
  belongs_to :breed
  
  with_options presence: true do
    validates :breedname
    validates :locality
    validates :generation_id
    validates :food_id
    validates :memo
  end
end
