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

ActiveRecord::Schema.define(version: 2021_11_02_003159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mensagems", force: :cascade do |t|
    t.bigint "usuario_id"
    t.bigint "sala_bate_papo_id"
    t.text "conteudo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sala_bate_papo_id"], name: "index_mensagems_on_sala_bate_papo_id"
    t.index ["usuario_id"], name: "index_mensagems_on_usuario_id"
  end

  create_table "sala_bate_papos", force: :cascade do |t|
    t.string "topico"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "mensagems", "sala_bate_papos"
  add_foreign_key "mensagems", "usuarios"
end
