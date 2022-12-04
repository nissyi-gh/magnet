class AddColumnToNotionDatabaseProperties < ActiveRecord::Migration[7.0]
  def change
    add_reference :notion_database_properties, :database
  end
end
