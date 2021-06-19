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

ActiveRecord::Schema.define(version: 2021_06_15_034532) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "capitulos", force: :cascade do |t|
    t.string "clave"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "conceptos", force: :cascade do |t|
    t.string "clave"
    t.string "description"
    t.bigint "capitulo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["capitulo_id"], name: "index_conceptos_on_capitulo_id"
  end

  create_table "inputs", force: :cascade do |t|
    t.datetime "input_date"
    t.string "invoice"
    t.decimal "price"
    t.decimal "quantity"
    t.string "location"
    t.bigint "product_id", null: false
    t.bigint "supplier_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_inputs_on_product_id"
    t.index ["supplier_id"], name: "index_inputs_on_supplier_id"
    t.index ["user_id"], name: "index_inputs_on_user_id"
  end

  create_table "outputs", force: :cascade do |t|
    t.date "output_date"
    t.string "invoice"
    t.decimal "quantity"
    t.decimal "price"
    t.string "receiving_area"
    t.string "receiving_person"
    t.bigint "product_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_outputs_on_product_id"
    t.index ["user_id"], name: "index_outputs_on_user_id"
  end

  create_table "partidas", force: :cascade do |t|
    t.string "clave"
    t.string "description"
    t.bigint "concepto_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["concepto_id"], name: "index_partidas_on_concepto_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "brand"
    t.text "description"
    t.string "unit"
    t.string "package"
    t.integer "units_per_package"
    t.decimal "last_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "supplier_id", null: false
    t.bigint "capitulo_id", null: false
    t.bigint "concepto_id", null: false
    t.bigint "partida_id", null: false
    t.decimal "stock"
    t.decimal "minimum"
    t.index ["capitulo_id"], name: "index_products_on_capitulo_id"
    t.index ["concepto_id"], name: "index_products_on_concepto_id"
    t.index ["partida_id"], name: "index_products_on_partida_id"
    t.index ["supplier_id"], name: "index_products_on_supplier_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.text "address"
    t.string "postal_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.integer "access_level", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "conceptos", "capitulos"
  add_foreign_key "inputs", "products"
  add_foreign_key "inputs", "suppliers"
  add_foreign_key "inputs", "users"
  add_foreign_key "outputs", "products"
  add_foreign_key "outputs", "users"
  add_foreign_key "partidas", "conceptos"
  add_foreign_key "products", "capitulos"
  add_foreign_key "products", "conceptos"
  add_foreign_key "products", "partidas"
  add_foreign_key "products", "suppliers"
end
