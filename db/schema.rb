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

ActiveRecord::Schema[7.0].define(version: 2023_08_08_135047) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "phone"
    t.integer "no_of_people"
    t.date "check_in_date"
    t.date "check_out_date"
    t.bigint "user_id", null: false
    t.bigint "travel_package_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["travel_package_id"], name: "index_bookings_on_travel_package_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "destinations", force: :cascade do |t|
    t.string "location"
    t.string "country"
    t.string "image_url"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_destinations_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "name"
    t.text "comment"
    t.integer "rating"
    t.bigint "user_id", null: false
    t.bigint "travel_package_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["travel_package_id"], name: "index_reviews_on_travel_package_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "travel_experiences", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "image_url"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_travel_experiences_on_user_id"
  end

  create_table "travel_packages", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image_url"
    t.decimal "pricing"
    t.text "itinerary"
    t.string "booking_status"
    t.bigint "user_id", null: false
    t.bigint "destination_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_travel_packages_on_destination_id"
    t.index ["user_id"], name: "index_travel_packages_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.integer "role", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "bookings", "travel_packages"
  add_foreign_key "bookings", "users"
  add_foreign_key "destinations", "users"
  add_foreign_key "reviews", "travel_packages"
  add_foreign_key "reviews", "users"
  add_foreign_key "travel_experiences", "users"
  add_foreign_key "travel_packages", "destinations"
  add_foreign_key "travel_packages", "users"
end
