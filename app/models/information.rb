class Information < ApplicationRecord
  belongs_to :breed
  has_many :more_informations

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :generation
  belongs_to_active_hash :food
  
  with_options presence: true do
    validates :breedname
    validates :locality
    validates :generation_id
    validates :food_id
  end

  validates :generation_id, numericality: { other_than: 1 }
  validates :food_id, numericality: { other_than: 1 }
end
