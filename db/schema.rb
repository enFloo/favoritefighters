ActiveRecord::Schema.define(version: 2021_10_19_221441) do

  create_table "fighters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "weight_class"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_fighters_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
