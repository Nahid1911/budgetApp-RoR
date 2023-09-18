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

ActiveRecord::Schema[7.0].define(version: 2023_09_18_144546) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tran_details", force: :cascade do |t|
    t.string "itemDetails"
    t.bigint "author_id", null: false
    t.bigint "tran_groups_id", null: false
    t.float "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_tran_details_on_author_id"
    t.index ["tran_groups_id"], name: "index_tran_details_on_tran_groups_id"
  end

  create_table "tran_groups", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "groupName"
    t.string "icon"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tran_groups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "tran_details", "tran_groups", column: "tran_groups_id"
  add_foreign_key "tran_details", "users", column: "author_id"
  add_foreign_key "tran_groups", "users"
end
