module Notion::Page
  # def self.create(database_id: database_id, token: token)
  def self.post(database_id, token)
    Notion::connection.post("/v1/pages") do |request|
      request.headers['Authorization'] =  "Bearer #{token}"
      request.body = payload(database_id).to_json
    end
  end

  def payload(database_id)
    {
      "parent": {
        "database_id": "#{database_id}"
      },
      "properties": {
        "title": {
          "title": [
            {
              "text": {
                "content": "railsからテスト"
              }
            }
          ]        
        }
      }
    }
  end

  module_function :connection, :payload
end
