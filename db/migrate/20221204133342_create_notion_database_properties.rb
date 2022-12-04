class CreateNotionDatabaseProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :notion_database_properties do |t|
      t.string :name
      t.string :property_id
      t.string :type
      t.timestamps
    end
  end
end
