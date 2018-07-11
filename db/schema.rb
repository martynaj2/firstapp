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

ActiveRecord::Schema.define(version: 2018_07_11_090856) do

  create_table "author_comments", force: :cascade do |t|
    t.integer "author_id"
    t.integer "comment_id"
    t.index ["author_id"], name: "index_author_comments_on_author_id"
    t.index ["comment_id"], name: "index_author_comments_on_comment_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "autor_posts", force: :cascade do |t|
    t.integer "autor_id"
    t.integer "post_id"
    t.index ["autor_id"], name: "index_autor_posts_on_autor_id"
    t.index ["post_id"], name: "index_autor_posts_on_post_id"
  end

  create_table "autors", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "author_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "autor_id"
  end

end
