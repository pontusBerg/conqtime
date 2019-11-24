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

ActiveRecord::Schema.define(version: 2019_07_17_083528) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievements", force: :cascade do |t|
    t.bigint "trophy_id"
    t.bigint "journal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "shown", default: false
    t.index ["journal_id"], name: "index_achievements_on_journal_id"
    t.index ["trophy_id"], name: "index_achievements_on_trophy_id"
  end

  create_table "entries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "goal"
    t.date "date"
    t.bigint "journal_id"
    t.index ["journal_id"], name: "index_entries_on_journal_id"
  end

  create_table "journals", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "title"
    t.string "image"
    t.index ["user_id"], name: "index_journals_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "milestones", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.bigint "entry_id"
    t.integer "stars"
    t.index ["entry_id"], name: "index_milestones_on_entry_id"
  end

  create_table "pomodoros", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "milestone_id"
    t.bigint "user_id"
    t.datetime "start"
    t.datetime "end"
    t.string "state"
    t.integer "stars", default: 0
    t.index ["milestone_id"], name: "index_pomodoros_on_milestone_id"
    t.index ["user_id"], name: "index_pomodoros_on_user_id"
  end

  create_table "trophies", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.text "bio"
    t.string "avatar"
    t.string "location"
    t.string "gender"
    t.integer "age"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "achievements", "journals"
  add_foreign_key "achievements", "trophies"
  add_foreign_key "entries", "journals"
  add_foreign_key "milestones", "entries"
  add_foreign_key "pomodoros", "milestones"
  add_foreign_key "pomodoros", "users"
end
