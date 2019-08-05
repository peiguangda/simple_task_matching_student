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

ActiveRecord::Schema.define(version: 2019_08_05_065732) do

  create_table "matching_tasks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "task_id"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_id"], name: "index_matching_tasks_on_task_id"
    t.index ["user_id"], name: "index_matching_tasks_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "content"
    t.string "field"
    t.string "area"
    t.integer "salary"
    t.datetime "registration_deadline"
    t.datetime "task_deadline"
    t.boolean "veteran"
    t.string "descript_url"
    t.string "money_unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "name"
    t.string "address"
    t.string "self_introduction"
    t.string "skill"
    t.string "bank_account_number"
    t.string "picture_url"
    t.string "certificate"
    t.integer "role"
    t.datetime "birthday"
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
