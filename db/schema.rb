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

ActiveRecord::Schema.define(version: 20170912183034) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "activities", force: :cascade do |t|
    t.date     "fechap"
    t.integer  "estado"
    t.date     "creada"
    t.string   "observ"
    t.integer  "sheet_id"
    t.integer  "admin_user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["admin_user_id"], name: "index_activities_on_admin_user_id", using: :btree
    t.index ["sheet_id"], name: "index_activities_on_sheet_id", using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end



  create_table "details", force: :cascade do |t|
    t.integer  "area"
    t.date     "pfecha"
    t.string   "descripcion"
    t.integer  "item_id"
    t.integer  "admin_user_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "cantidad",      default: 1
    t.index ["admin_user_id"], name: "index_details_on_admin_user_id", using: :btree
    t.index ["item_id"], name: "index_details_on_item_id", using: :btree
  end



  create_table "employees", force: :cascade do |t|
    t.string   "dni"
    t.string   "ape_pat"
    t.string   "ape_mat"
    t.string   "nombres"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "correo"
    t.date     "fec_nacimiento"
    t.integer  "estado"
    t.integer  "tip_tra"
    t.integer  "esta_civil"
    t.integer  "afp"
    t.integer  "admin_user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "foto"
    t.string   "ape_nom"
    t.string   "correo_corp"
    t.date     "fec_inicon"
    t.date     "fec_tercon"
    t.string   "grado"
    t.string   "cargo"
    t.index ["admin_user_id"], name: "index_employees_on_admin_user_id", using: :btree
  end

  create_table "experiences", force: :cascade do |t|
    t.integer  "employee_id"
    t.string   "empresa"
    t.date     "desde"
    t.date     "hasta"
    t.string   "cargo"
    t.string   "obs"
    t.integer  "admin_user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["admin_user_id"], name: "index_experiences_on_admin_user_id", using: :btree
    t.index ["employee_id"], name: "index_experiences_on_employee_id", using: :btree
  end

  create_table "families", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "tipo_rela"
    t.string   "ape_nom"
    t.date     "fec_nac"
    t.integer  "admin_user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["admin_user_id"], name: "index_families_on_admin_user_id", using: :btree
    t.index ["employee_id"], name: "index_families_on_employee_id", using: :btree
  end

  create_table "formulas", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "string"
    t.integer  "admin_user_id"
    t.integer  "orden"
    t.string   "obs"
    t.integer  "cantidad"
    t.integer  "numero"
    t.date     "pfecha"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["admin_user_id"], name: "index_formulas_on_admin_user_id", using: :btree
    t.index ["product_id"], name: "index_formulas_on_product_id", using: :btree
  end

  create_table "items", force: :cascade do |t|
    t.integer  "objetivo"
    t.string   "actividad"
    t.integer  "responsable"
    t.integer  "unidad"
    t.integer  "programa"
    t.date     "pfecha"
    t.integer  "admin_user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["admin_user_id"], name: "index_items_on_admin_user_id", using: :btree
  end

  create_table "lists", force: :cascade do |t|
    t.string   "clase"
    t.string   "descripcion"
    t.integer  "orden"
    t.integer  "admin_user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["admin_user_id"], name: "index_lists_on_admin_user_id", using: :btree
  end






  create_table "products", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.integer  "orden"
    t.string   "obs"
    t.integer  "admin_user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["admin_user_id"], name: "index_products_on_admin_user_id", using: :btree
  end

  create_table "sheets", force: :cascade do |t|
    t.string   "codigo_ficha"
    t.string   "codigo_revision"
    t.date     "creada"
    t.date     "revisada"
    t.string   "descripcion_original"
    t.string   "descripcion"
    t.integer  "grupo"
    t.integer  "clase"
    t.string   "cna"
    t.string   "na"
    t.string   "soc"
    t.string   "caracteristica"
    t.integer  "vigencia"
    t.integer  "unidad_medida"
    t.integer  "admin_user_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["admin_user_id"], name: "index_sheets_on_admin_user_id", using: :btree
  end

  create_table "students", force: :cascade do |t|
    t.integer  "employee_id"
    t.string   "centro"
    t.string   "especialidad"
    t.date     "desde"
    t.date     "hasta"
    t.string   "grado"
    t.string   "obs"
    t.integer  "admin_user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["admin_user_id"], name: "index_students_on_admin_user_id", using: :btree
    t.index ["employee_id"], name: "index_students_on_employee_id", using: :btree
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "numero_proveedor"
    t.integer  "num_documento_pais"
    t.string   "des_proveedor"
    t.string   "direccion_pais"
    t.string   "telefono_pais"
    t.string   "correo_pais"
    t.string   "pag_weeb"
    t.string   "nro_representante"
    t.string   "des_representante"
    t.string   "correo_representante"
    t.integer  "activo"
    t.string   "fec_registro"
    t.string   "mod_registro"
    t.integer  "tipo_proveedor"
    t.integer  "calificacion"
    t.string   "observacion"
    t.integer  "admin_user_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "actividad"
    t.integer  "num_traba"
    t.index ["admin_user_id"], name: "index_suppliers_on_admin_user_id", using: :btree
  end

  add_foreign_key "activities", "admin_users"
  add_foreign_key "activities", "sheets"
  add_foreign_key "details", "admin_users"
  add_foreign_key "employees", "admin_users"
  add_foreign_key "experiences", "admin_users"
  add_foreign_key "experiences", "employees"
  add_foreign_key "families", "admin_users"
  add_foreign_key "families", "employees"
  add_foreign_key "formulas", "admin_users"
  add_foreign_key "formulas", "products"
  add_foreign_key "items", "admin_users"
  add_foreign_key "lists", "admin_users"
  add_foreign_key "products", "admin_users"
  add_foreign_key "sheets", "admin_users"
  add_foreign_key "students", "admin_users"
  add_foreign_key "students", "employees"
  add_foreign_key "suppliers", "admin_users"
end
