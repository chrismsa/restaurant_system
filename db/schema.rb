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

ActiveRecord::Schema[7.0].define(version: 2022_07_16_231855) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "name", null: false
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events_foods", id: false, force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "food_id", null: false
    t.index ["event_id", "food_id"], name: "index_events_foods", unique: true
  end

  create_table "foods", force: :cascade do |t|
    t.string "name", null: false
    t.string "options", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string "person_name", null: false
    t.integer "quantity", null: false
    t.string "food_name", null: false
    t.decimal "food_price", null: false
    t.decimal "total_price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
