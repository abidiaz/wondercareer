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

ActiveRecord::Schema.define(version: 20161003172456) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "field_interests", force: :cascade do |t|
    t.integer  "field_id"
    t.integer  "interest_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["field_id"], name: "index_field_interests_on_field_id", using: :btree
    t.index ["interest_id"], name: "index_field_interests_on_interest_id", using: :btree
  end

  create_table "fields", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "figures", force: :cascade do |t|
    t.string   "name"
    t.string   "bio"
    t.string   "tagline"
    t.string   "image"
    t.integer  "field_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["field_id"], name: "index_figures_on_field_id", using: :btree
  end

  create_table "interests", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "links", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.integer  "figure_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["figure_id"], name: "index_links_on_figure_id", using: :btree
  end

end
