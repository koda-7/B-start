class Breed < ApplicationRecord
  belongs_to :uesr
  has_one_attached :image
  # has_one :informations
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  with_options presence: true do
    validates :title
    validates :category_id
    validates :type_name
    validates :date
    validates :result
    validates :note
    validates :image
  end

  validates :category_id, numericality: { other_than: 1 }
end