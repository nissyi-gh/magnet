class ChangeToCoulmnNotionDatabases < ActiveRecord::Migration[7.0]
  def change
    rename_column :notion_databases, :url, :database_id
  end
end
