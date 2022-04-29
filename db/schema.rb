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

ActiveRecord::Schema[7.0].define(version: 2022_04_22_111419) do
  create_table "equipment", force: :cascade do |t|
    t.boolean "rental", default: false
    t.string "equipment", null: false
    t.string "code", null: false
    t.date "deleted_at"
    t.integer "rental_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rental_id"], name: "index_equipment_on_rental_id"
    t.index ["user_id"], name: "index_equipment_on_user_id"
  end

  create_table "rentals", force: :cascade do |t|
    t.date "reserve_schedule_date"
    t.date "reserve_actual_date"
    t.date "return_schedule_date"
    t.date "return_actual_date"
    t.date "return_over_date"
    t.string "status"
    t.string "equipment"
    t.string "code"
    t.string "reason"
    t.boolean "apply"
    t.boolean "rental_confirmation"
    t.boolean "return_confirmation"
    t.date "deleted_at"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_rentals_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.boolean "admin", default: false
    t.date "deleted_at"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "equipment", "rentals"
  add_foreign_key "equipment", "users"
  add_foreign_key "rentals", "users"
end
