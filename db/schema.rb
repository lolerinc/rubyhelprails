# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150419172914) do

  create_table "albums", force: :cascade do |t|
    t.string   "title"
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "artist_id"
  end

  add_index "albums", ["artist_id"], name: "index_albums_on_artist_id"

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists_genres", id: false, force: :cascade do |t|
    t.integer "artist_id", null: false
    t.integer "genre_id",  null: false
  end

  add_index "artists_genres", ["artist_id", "genre_id"], name: "index_artists_genres_on_artist_id_and_genre_id", unique: true

  create_table "class_gs", force: :cascade do |t|
    t.integer  "col1"
    t.integer  "col2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "libraries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string   "title"
    t.string   "length"
    t.string   "composer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "album_id"
  end

  add_index "songs", ["album_id"], name: "index_songs_on_album_id"

end
