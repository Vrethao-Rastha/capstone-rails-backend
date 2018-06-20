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

ActiveRecord::Schema.define(version: 2018_06_14_183017) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dc_rnews", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dcr_comments", force: :cascade do |t|
    t.string "name"
    t.text "comment"
    t.string "avatar"
    t.string "storyId"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "main_stories", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "main_story_comments", force: :cascade do |t|
    t.string "name"
    t.text "comment"
    t.string "avatar"
    t.string "storyId"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "piper_comments", force: :cascade do |t|
    t.string "name"
    t.text "comment"
    t.string "avatar"
    t.string "storyId"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "piper_news", force: :cascade do |t|
    t.text "question"
    t.text "answer"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_comments", force: :cascade do |t|
    t.string "name"
    t.text "comment"
    t.string "avatar"
    t.string "commentId"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publik_comments", force: :cascade do |t|
    t.string "name"
    t.text "comment"
    t.string "avatar"
    t.string "storyId"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publik_news", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scrollers", force: :cascade do |t|
    t.string "pic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "avatar"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
