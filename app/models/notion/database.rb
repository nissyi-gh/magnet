class Notion::Database < ApplicationRecord
  validates :name, presence: true
  validates :token, presence: true
  validates :database_id, presence: true, uniqueness: true

  has_many :properties, dependent: :destroy

  class << self
    def get
      all.each do |database|
        database.fetch_properties
      end
    end
  end

  def fetch_properties
    response =  Notion::connection.get("/v1/databases/#{database_id}") do |request|
      request.headers['Authorization'] =  "#{token}"
    end

    JSON.parse(response.body)["properties"].values.each do |property|
      self.properties.find_or_create_by(property_id: property["id"]) do |new_property|
        new_property.name = property["name"]
        new_property.type = property["type"]
      end
    end
  end
end
