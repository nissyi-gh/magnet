class Notion::Database < ApplicationRecord
  validates :name, presence: true
  validates :token, presence: true
  validates :url, presence: true
end
