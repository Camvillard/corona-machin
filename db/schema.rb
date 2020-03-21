ActiveRecord::Schema.define(version: 2020_03_21_223121) do

  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.bigint "list_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["list_id"], name: "index_items_on_list_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "title"
    t.bigint "need_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["need_id"], name: "index_lists_on_need_id"
  end

  create_table "needs", force: :cascade do |t|
    t.string "address"
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "status"
    t.text "message"
    t.bigint "tag_id", null: false
    t.bigint "type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tag_id"], name: "index_needs_on_tag_id"
    t.index ["type_id"], name: "index_needs_on_type_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "items", "lists"
  add_foreign_key "lists", "needs"
  add_foreign_key "needs", "tags"
  add_foreign_key "needs", "types"
end
