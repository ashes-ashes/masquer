# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_22_011454) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "account_name", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.date "birthdate", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_name"], name: "index_accounts_on_account_name", unique: true
    t.index ["email"], name: "index_accounts_on_email", unique: true
    t.index ["session_token"], name: "index_accounts_on_session_token", unique: true
  end

  create_table "templates", force: :cascade do |t|
    t.string "template_name", null: false
    t.integer "account_id", null: false
    t.boolean "private", default: false, null: false
    t.boolean "r18", default: false, null: false
    t.text "description"
    t.text "description_r18"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_templates_on_account_id"
    t.index ["template_name"], name: "index_templates_on_template_name"
  end

end
