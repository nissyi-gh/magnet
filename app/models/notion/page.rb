module Notion::Page
  # def self.create(database_id: database_id, token: token)
  def self.post(database_id, token)
    connection.post("https://api.notion.com/v1/pages/") do |request|
      request.headers['content-type'] = "application/json"
      request.headers['Authorization'] =  "Bearer #{token}"
      request.headers['Notion-Version'] = "2022-06-28"
      request.body = payload(database_id).to_json
    end
  end

  def connection
    @connection ||= Faraday.new('https://api.notion.com/v1/pages/') 
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
