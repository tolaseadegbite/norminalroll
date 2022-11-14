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

ActiveRecord::Schema[7.0].define(version: 2022_10_22_205758) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "qualificationables", force: :cascade do |t|
    t.bigint "staff_id", null: false
    t.bigint "qualification_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["qualification_id"], name: "index_qualificationables_on_qualification_id"
    t.index ["staff_id"], name: "index_qualificationables_on_staff_id"
  end

  create_table "qualifications", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "surname"
    t.string "other_names"
    t.string "state"
    t.string "lga"
    t.string "designation"
    t.text "qwd"
    t.text "prof_qualifications"
    t.integer "conpcass"
    t.string "file_no"
    t.text "remarks"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "status_of_app"
    t.string "sex"
    t.string "staff_status"
    t.date "dob"
    t.date "dofa"
    t.date "dopa"
    t.string "permanent_address"
    t.string "department"
    t.string "email"
    t.date "date_of_confirmation"
    t.string "phone_number"
    t.index ["email"], name: "index_staffs_on_email", unique: true
    t.index ["phone_number"], name: "index_staffs_on_phone_number", unique: true
    t.index ["user_id"], name: "index_staffs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
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

  add_foreign_key "qualificationables", "qualifications"
  add_foreign_key "qualificationables", "staffs"
  add_foreign_key "staffs", "users"
end
