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

ActiveRecord::Schema.define(version: 20171109162832) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id",   precision: 38
    t.string   "author_type"
    t.integer  "author_id",     precision: 38
    t.datetime "created_at",    precision: 6,  null: false
    t.datetime "updated_at",    precision: 6,  null: false
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "i_act_adm_com_aut_typ_aut_id"
  add_index "active_admin_comments", ["namespace"], name: "i_act_adm_com_nam"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "i_act_adm_com_res_typ_res_id"

  create_table "activities", force: :cascade do |t|
    t.date     "fechap"
    t.integer  "estado",        precision: 38
    t.date     "creada"
    t.string   "observ"
    t.integer  "sheet_id",      precision: 38
    t.integer  "admin_user_id", precision: 38
    t.datetime "created_at",    precision: 6,  null: false
    t.datetime "updated_at",    precision: 6,  null: false
  end

  add_index "activities", ["admin_user_id"], name: "i_activities_admin_user_id"
  add_index "activities", ["sheet_id"], name: "index_activities_on_sheet_id"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                                 default: "", null: false
    t.string   "encrypted_password",                    default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at",    precision: 6
    t.integer  "sign_in_count",          precision: 38, default: 0,  null: false
    t.datetime "current_sign_in_at",     precision: 6
    t.datetime "last_sign_in_at",        precision: 6
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",             precision: 6,               null: false
    t.datetime "updated_at",             precision: 6,               null: false
    t.integer  "categoria",              precision: 38
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "i_adm_use_res_pas_tok", unique: true

  create_table "contracts", force: :cascade do |t|
    t.integer  "employee_id",   precision: 38
    t.integer  "num_cont",      precision: 38
    t.date     "fec_inicon"
    t.date     "fec_tercon"
    t.string   "puesto"
    t.integer  "cod_hor",       precision: 38
    t.float    "remuneracion"
    t.integer  "area",          precision: 38
    t.integer  "tipo_contra",   precision: 38
    t.date     "fec_retiro"
    t.string   "motivo_retir"
    t.string   "obs"
    t.integer  "admin_user_id", precision: 38
    t.datetime "created_at",    precision: 6,  null: false
    t.datetime "updated_at",    precision: 6,  null: false
  end

  add_index "contracts", ["admin_user_id"], name: "i_contracts_admin_user_id"
  add_index "contracts", ["employee_id"], name: "index_contracts_on_employee_id"

  create_table "details", force: :cascade do |t|
    t.integer  "area",          precision: 38
    t.date     "pfecha"
    t.string   "descripcion"
    t.integer  "item_id",       precision: 38
    t.integer  "admin_user_id", precision: 38
    t.datetime "created_at",    precision: 6,              null: false
    t.datetime "updated_at",    precision: 6,              null: false
    t.integer  "cantidad",      precision: 38, default: 1
  end

  add_index "details", ["admin_user_id"], name: "index_details_on_admin_user_id"
  add_index "details", ["item_id"], name: "index_details_on_item_id"

  create_table "employees", force: :cascade do |t|
    t.string   "dni"
    t.string   "ape_pat"
    t.string   "ape_mat"
    t.string   "nombres"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "correo"
    t.date     "fec_nacimiento"
    t.integer  "estado",         precision: 38
    t.integer  "tip_tra",        precision: 38
    t.integer  "esta_civil",     precision: 38
    t.integer  "afp",            precision: 38
    t.integer  "admin_user_id",  precision: 38
    t.datetime "created_at",     precision: 6,  null: false
    t.datetime "updated_at",     precision: 6,  null: false
    t.string   "foto"
    t.string   "ape_nom"
    t.string   "correo_corp"
    t.date     "fec_inicon"
    t.date     "fec_tercon"
    t.string   "grado"
    t.string   "cargo"
  end

  add_index "employees", ["admin_user_id"], name: "i_employees_admin_user_id"

  create_table "experiences", force: :cascade do |t|
    t.integer  "employee_id",   precision: 38
    t.string   "empresa"
    t.date     "desde"
    t.date     "hasta"
    t.string   "cargo"
    t.string   "obs"
    t.integer  "admin_user_id", precision: 38
    t.datetime "created_at",    precision: 6,  null: false
    t.datetime "updated_at",    precision: 6,  null: false
  end

  add_index "experiences", ["admin_user_id"], name: "i_experiences_admin_user_id"
  add_index "experiences", ["employee_id"], name: "i_experiences_employee_id"

  create_table "families", force: :cascade do |t|
    t.integer  "employee_id",   precision: 38
    t.integer  "tipo_rela",     precision: 38
    t.string   "ape_nom"
    t.date     "fec_nac"
    t.integer  "admin_user_id", precision: 38
    t.datetime "created_at",    precision: 6,  null: false
    t.datetime "updated_at",    precision: 6,  null: false
  end

  add_index "families", ["admin_user_id"], name: "i_families_admin_user_id"
  add_index "families", ["employee_id"], name: "index_families_on_employee_id"

  create_table "formulas", force: :cascade do |t|
    t.integer  "product_id",    precision: 38
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "string"
    t.integer  "admin_user_id", precision: 38
    t.integer  "orden",         precision: 38
    t.string   "obs"
    t.integer  "cantidad",      precision: 38
    t.integer  "numero",        precision: 38
    t.date     "pfecha"
    t.datetime "created_at",    precision: 6,  null: false
    t.datetime "updated_at",    precision: 6,  null: false
  end

  add_index "formulas", ["admin_user_id"], name: "i_formulas_admin_user_id"
  add_index "formulas", ["product_id"], name: "index_formulas_on_product_id"

  create_table "items", force: :cascade do |t|
    t.integer  "objetivo",      precision: 38
    t.string   "actividad"
    t.integer  "responsable",   precision: 38
    t.integer  "unidad",        precision: 38
    t.integer  "programa",      precision: 38
    t.date     "pfecha"
    t.integer  "admin_user_id", precision: 38
    t.datetime "created_at",    precision: 6,  null: false
    t.datetime "updated_at",    precision: 6,  null: false
  end

  add_index "items", ["admin_user_id"], name: "index_items_on_admin_user_id"

  create_table "lists", force: :cascade do |t|
    t.string   "clase"
    t.string   "descripcion"
    t.integer  "orden",       precision: 38
    t.datetime "created_at",  precision: 6,  null: false
    t.datetime "updated_at",  precision: 6,  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.integer  "orden",         precision: 38
    t.string   "obs"
    t.integer  "admin_user_id", precision: 38
    t.datetime "created_at",    precision: 6,  null: false
    t.datetime "updated_at",    precision: 6,  null: false
  end

  add_index "products", ["admin_user_id"], name: "i_products_admin_user_id"

  create_table "sheets", force: :cascade do |t|
    t.string   "codigo_ficha"
    t.string   "codigo_revision"
    t.date     "creada"
    t.date     "revisada"
    t.string   "descripcion_original"
    t.string   "descripcion"
    t.integer  "grupo",                precision: 38
    t.integer  "clase",                precision: 38
    t.string   "cna"
    t.string   "na"
    t.string   "soc"
    t.string   "caracteristica"
    t.integer  "vigencia",             precision: 38
    t.integer  "unidad_medida",        precision: 38
    t.integer  "admin_user_id",        precision: 38
    t.datetime "created_at",           precision: 6,  null: false
    t.datetime "updated_at",           precision: 6,  null: false
  end

  add_index "sheets", ["admin_user_id"], name: "index_sheets_on_admin_user_id"

  create_table "students", force: :cascade do |t|
    t.integer  "employee_id",   precision: 38
    t.string   "centro"
    t.string   "especialidad"
    t.date     "desde"
    t.date     "hasta"
    t.string   "grado"
    t.string   "obs"
    t.integer  "admin_user_id", precision: 38
    t.datetime "created_at",    precision: 6,  null: false
    t.datetime "updated_at",    precision: 6,  null: false
  end

  add_index "students", ["admin_user_id"], name: "i_students_admin_user_id"
  add_index "students", ["employee_id"], name: "index_students_on_employee_id"

  create_table "suppliers", force: :cascade do |t|
    t.string   "numero_proveedor"
    t.integer  "num_documento_pais",   precision: 38
    t.string   "des_proveedor"
    t.string   "direccion_pais"
    t.string   "telefono_pais"
    t.string   "correo_pais"
    t.string   "pag_weeb"
    t.string   "nro_representante"
    t.string   "des_representante"
    t.string   "correo_representante"
    t.integer  "activo",               precision: 38
    t.string   "fec_registro"
    t.string   "mod_registro"
    t.integer  "tipo_proveedor",       precision: 38
    t.integer  "calificacion",         precision: 38
    t.string   "observacion"
    t.integer  "admin_user_id",        precision: 38
    t.datetime "created_at",           precision: 6,  null: false
    t.datetime "updated_at",           precision: 6,  null: false
    t.integer  "actividad",            precision: 38
    t.integer  "num_traba",            precision: 38
  end

  add_index "suppliers", ["admin_user_id"], name: "i_suppliers_admin_user_id"

  add_foreign_key "activities", "admin_users"
  add_foreign_key "activities", "sheets"
  add_foreign_key "contracts", "admin_users"
  add_foreign_key "contracts", "employees"
  add_foreign_key "details", "admin_users"
  add_foreign_key "details", "items"
  add_foreign_key "employees", "admin_users"
  add_foreign_key "experiences", "admin_users"
  add_foreign_key "experiences", "employees"
  add_foreign_key "families", "admin_users"
  add_foreign_key "families", "employees"
  add_foreign_key "formulas", "admin_users"
  add_foreign_key "formulas", "products"
  add_foreign_key "items", "admin_users"
  add_foreign_key "products", "admin_users"
  add_foreign_key "sheets", "admin_users"
  add_foreign_key "students", "admin_users"
  add_foreign_key "students", "employees"
  add_foreign_key "suppliers", "admin_users"
end
