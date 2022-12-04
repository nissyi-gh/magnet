class Notion::Database::Property < ApplicationRecord
  validates :property_type, presence: true
  validates :property_id, presence: true
  belongs_to :database
end
