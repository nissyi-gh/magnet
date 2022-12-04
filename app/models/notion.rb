module Notion
  def connection
    @connection ||=
      Faraday.new(url: 'https://api.notion.com/') do |request|
        request.headers['content-type'] = "application/json"
        request.headers['Notion-Version'] = "2022-06-28"
      end
  end

  def self.table_name_prefix
    "notion_"
  end

  module_function :connection
end
