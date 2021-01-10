class MoreInformation < ApplicationRecord
belongs_to :information
# has_many :detail_informations

extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :sex

validates :number, presence: true
validates :sex_id, numericality: { other_than: 1 }
end
