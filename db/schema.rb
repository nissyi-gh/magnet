# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_04_140726) do
  create_table "notion_database_properties", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "property_id"
    t.string "property_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "database_id"
    t.index ["database_id"], name: "index_notion_database_properties_on_database_id"
  end

  create_table "notion_databases", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.text "token"
    t.text "database_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
