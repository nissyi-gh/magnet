class Notion::Database < ApplicationRecord
  validates :name, presence: true
  validates :token, presence: true
  validates :database_id, presence: true, uniqueness: true

  class << self
    def get
      all.each do |database|
        database.properties
      end
    end
  end

  def properties
    response =  Notion::connection.get("/v1/databases/#{database_id}") do |request|
      request.headers['Authorization'] =  "#{token}"
    end

    @properties = JSON.parse(response.body)["properties"]
  end
end
