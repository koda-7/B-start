class Breed < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :category_id
    validates :type_name
    validates :date
  end

  belongs_to :uesrs
  has_one_attached :informations
  has_one_attached :image
end
