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

ActiveRecord::Schema.define(version: 2022_07_30_004639) do

  create_table "chef_comments", force: :cascade do |t|
    t.text "comment"
    t.integer "rating"
    t.integer "user_id"
    t.integer "chef_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chef_posts", force: :cascade do |t|
    t.string "image"
    t.string "dish_name"
    t.boolean "featured?"
    t.integer "chef_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chefs", force: :cascade do |t|
    t.string "username"
    t.string "password_hash"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "prof_pic"
    t.string "email"
    t.float "longitude"
    t.float "latitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "chef_price"
  end

  create_table "cuisine_posts", force: :cascade do |t|
    t.integer "cuisine_id"
    t.integer "chef_post_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cuisines", force: :cascade do |t|
    t.string "name"
    t.integer "chef_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "requests", force: :cascade do |t|
    t.datetime "request_date"
    t.string "status"
    t.integer "chef_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_comments", force: :cascade do |t|
    t.text "comment"
    t.integer "rating"
    t.integer "user_id"
    t.integer "chef_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_hash"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "prof_pic"
    t.string "email"
    t.float "longitude"
    t.float "latitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
