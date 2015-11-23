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

ActiveRecord::Schema.define(version: 20151120123013) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "linhas", force: :cascade do |t|
    t.integer  "numero"
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "onibuses", force: :cascade do |t|
    t.string   "placa"
    t.boolean  "ativo"
    t.integer  "linha_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "onibuses", ["linha_id"], name: "index_onibuses_on_linha_id", using: :btree

  create_table "pontos", force: :cascade do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "rua_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pontos", ["rua_id"], name: "index_pontos_on_rua_id", using: :btree

  create_table "rota", force: :cascade do |t|
    t.string   "destino"
    t.string   "origem"
    t.integer  "linha_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "rota", ["linha_id"], name: "index_rota_on_linha_id", using: :btree

  create_table "ruas", force: :cascade do |t|
    t.string   "nome"
    t.integer  "rotum_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ruas", ["rotum_id"], name: "index_ruas_on_rotum_id", using: :btree

  create_table "usuarios", force: :cascade do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "login"
    t.string   "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "onibuses", "linhas"
  add_foreign_key "pontos", "ruas"
  add_foreign_key "rota", "linhas"
  add_foreign_key "ruas", "rota"
end
