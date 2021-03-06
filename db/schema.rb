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

ActiveRecord::Schema.define(version: 20200831052039) do

  create_table "game_results", force: :cascade do |t|
    t.date "gamedate"
    t.string "gametitle"
    t.string "gameplace"
    t.string "gameopponent"
    t.string "gamepoint"
    t.string "gameassistant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "information", force: :cascade do |t|
    t.date "date"
    t.string "newcontent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["newcontent", "date"], name: "index_information_on_newcontent_and_date", unique: true
  end

  create_table "schedules", force: :cascade do |t|
    t.date "date"
    t.integer "starthour"
    t.integer "endhour"
    t.integer "startminute"
    t.integer "endminute"
    t.string "gameplace"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.string "photo"
    t.date "birthday"
    t.string "belong"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
