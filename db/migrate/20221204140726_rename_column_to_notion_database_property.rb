class RenameColumnToNotionDatabaseProperty < ActiveRecord::Migration[7.0]
  def change
    rename_column :notion_database_properties, :type, :property_type
  end
end
