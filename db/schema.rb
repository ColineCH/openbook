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

ActiveRecord::Schema.define(version: 20160927122837) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "book_identifications", force: :cascade do |t|
    t.integer  "identification_number"
    t.integer  "book_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["book_id"], name: "index_book_identifications_on_book_id", using: :btree
  end

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.integer  "publishing_year"
    t.text     "back_cover"
    t.integer  "author_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["author_id"], name: "index_books_on_author_id", using: :btree
  end

  create_table "cities", force: :cascade do |t|
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "stars"
    t.text     "comment"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_comments_on_book_id", using: :btree
  end

  create_table "records", force: :cascade do |t|
    t.integer  "book_identification_id"
    t.integer  "user_id"
    t.integer  "city_id"
    t.boolean  "first_record"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "comment_id"
    t.index ["book_identification_id"], name: "index_records_on_book_identification_id", using: :btree
    t.index ["city_id"], name: "index_records_on_city_id", using: :btree
    t.index ["comment_id"], name: "index_records_on_comment_id", using: :btree
    t.index ["user_id"], name: "index_records_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "book_identifications", "books"
  add_foreign_key "books", "authors"
  add_foreign_key "comments", "books"
  add_foreign_key "records", "book_identifications"
  add_foreign_key "records", "cities"
  add_foreign_key "records", "comments"
  add_foreign_key "records", "users"
end
