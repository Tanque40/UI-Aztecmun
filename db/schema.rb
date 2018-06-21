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

ActiveRecord::Schema.define(version: 2018_06_20_180845) do

  create_table "comites", force: :cascade do |t|
    t.string "comite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "finishOradores", default: false, null: false
  end

  create_table "delegados", force: :cascade do |t|
    t.string "pais"
    t.integer "comite_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "presente", default: false, null: false
    t.index ["comite_id"], name: "index_delegados_on_comite_id"
  end

  create_table "presentes", force: :cascade do |t|
    t.integer "pais_id"
    t.integer "comite_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comite_id"], name: "index_presentes_on_comite_id"
    t.index ["pais_id"], name: "index_presentes_on_pais_id"
  end

  create_table "topics", force: :cascade do |t|
    t.integer "comite_id"
    t.text "topico"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "use", default: false, null: false
    t.index ["comite_id"], name: "index_topics_on_comite_id"
  end

end
