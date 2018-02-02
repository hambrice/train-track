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

ActiveRecord::Schema.define(version: 5) do

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.integer "trainer_id"
  end

  create_table "exercise_plans", force: :cascade do |t|
    t.integer "exercise_id"
    t.integer "plan_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "sets"
    t.integer "reps"
    t.string "schedule"
    t.string "body_region"
  end

  create_table "plans", force: :cascade do |t|
    t.string "title"
    t.integer "trainer_id"
    t.integer "client_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
  end

end
