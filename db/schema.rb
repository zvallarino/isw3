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

ActiveRecord::Schema.define(version: 2022_01_10_215515) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movie_selections", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.bigint "movie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["movie_id"], name: "index_movie_selections_on_movie_id"
    t.index ["profile_id"], name: "index_movie_selections_on_profile_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.text "genre"
    t.text "description"
    t.string "thumbnail"
    t.string "backdrop"
    t.integer "rating"
    t.integer "runtime"
    t.string "release_date"
    t.string "movie_link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "user_name"
    t.string "profile_img"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "movie_selections", "movies"
  add_foreign_key "movie_selections", "profiles"
end
