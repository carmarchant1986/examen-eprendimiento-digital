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

ActiveRecord::Schema.define(version: 2022_09_02_005143) do

  create_table "comunas", charset: "utf8mb4", force: :cascade do |t|
    t.string "nombre", limit: 30
    t.bigint "region_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["region_id"], name: "index_comunas_on_region_id"
  end

  create_table "curso_modulo_tutors", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "modulo_id", null: false
    t.bigint "tutor_id", null: false
    t.bigint "curso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["curso_id"], name: "index_curso_modulo_tutors_on_curso_id"
    t.index ["modulo_id"], name: "index_curso_modulo_tutors_on_modulo_id"
    t.index ["tutor_id"], name: "index_curso_modulo_tutors_on_tutor_id"
  end

  create_table "cursos", charset: "utf8mb4", force: :cascade do |t|
    t.date "fecha_inicio"
    t.date "fecha_termino"
    t.bigint "comuna_id", null: false
    t.bigint "plan_formativo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["comuna_id"], name: "index_cursos_on_comuna_id"
    t.index ["plan_formativo_id"], name: "index_cursos_on_plan_formativo_id"
  end

  create_table "estudiantes", charset: "utf8mb4", force: :cascade do |t|
    t.string "rut", limit: 15
    t.string "nombre", limit: 30
    t.string "apellido_pat", limit: 30
    t.string "apellido_mat", limit: 30
    t.string "direccion", limit: 100
    t.bigint "comuna_id", null: false
    t.bigint "curso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["comuna_id"], name: "index_estudiantes_on_comuna_id"
    t.index ["curso_id"], name: "index_estudiantes_on_curso_id"
  end

  create_table "modulos", charset: "utf8mb4", force: :cascade do |t|
    t.string "descripcion", limit: 100
    t.integer "duracion_horas"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plan_formativos", charset: "utf8mb4", force: :cascade do |t|
    t.string "descripcion", limit: 30
    t.integer "duracion_horas"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plan_modulos", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "modulo_id", null: false
    t.bigint "plan_formativo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["modulo_id"], name: "index_plan_modulos_on_modulo_id"
    t.index ["plan_formativo_id"], name: "index_plan_modulos_on_plan_formativo_id"
  end

  create_table "regions", charset: "utf8mb4", force: :cascade do |t|
    t.string "nombre", limit: 30
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tutors", charset: "utf8mb4", force: :cascade do |t|
    t.string "rut", limit: 15
    t.string "nombre", limit: 30
    t.string "apellido_pat", limit: 30
    t.string "apellido_mat", limit: 30
    t.string "direccion", limit: 100
    t.string "cargo", limit: 20
    t.integer "sueldo_hora"
    t.bigint "comuna_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["comuna_id"], name: "index_tutors_on_comuna_id"
  end

  add_foreign_key "comunas", "regions"
  add_foreign_key "curso_modulo_tutors", "cursos"
  add_foreign_key "curso_modulo_tutors", "modulos"
  add_foreign_key "curso_modulo_tutors", "tutors"
  add_foreign_key "cursos", "comunas"
  add_foreign_key "cursos", "plan_formativos"
  add_foreign_key "estudiantes", "comunas"
  add_foreign_key "estudiantes", "cursos"
  add_foreign_key "plan_modulos", "modulos"
  add_foreign_key "plan_modulos", "plan_formativos"
  add_foreign_key "tutors", "comunas"
end
