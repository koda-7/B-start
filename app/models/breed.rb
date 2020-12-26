class Breed < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :category_id
    validates :type_name
    validates :date
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  validates :category_id, numericality: { other_than: 1 }

  belongs_to :uesrs
  has_one_attached :informations
  has_one_attached :image
end
