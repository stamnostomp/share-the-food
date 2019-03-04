# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_03_04_005007) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "donations", force: :cascade do |t|
    t.string "name"
    t.text "details"
    t.datetime "fresh_until"
    t.float "latitude"
    t.float "longitude"
    t.text "pickup_notes"
    t.boolean "is_perishable"
    t.boolean "requires_preparation"
    t.boolean "is_vegetarian"
    t.boolean "is_vegan"
    t.boolean "is_gluten_free"
    t.boolean "contains_peanut"
    t.boolean "contains_treenut"
    t.boolean "contains_dairy"
    t.boolean "contains_soy"
    t.boolean "contains_egg"
    t.boolean "contains_fish"
    t.boolean "contains_shellfish"
    t.bigint "region_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_donations_on_region_id"
    t.index ["user_id"], name: "index_donations_on_user_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
