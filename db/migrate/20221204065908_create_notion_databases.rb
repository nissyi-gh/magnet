class CreateNotionDatabases < ActiveRecord::Migration[7.0]
  def change
    create_table :notion_databases do |t|

      t.timestamps
    end
  end
end
