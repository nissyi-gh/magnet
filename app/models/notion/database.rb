class Notion::Database < ApplicationRecord
  validates :name, presence: true
  validates :token, presence: true
  validates :database_id, presence: true, uniqueness: true
end
