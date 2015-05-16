ActiveRecord::Schema.define(version: 20150515192001) do
  enable_extension "plpgsql"

  create_table "profiles", force: :cascade do |t|
    t.string   "avatar"
    t.string   "photo"
    t.string   "user_name"
    t.string   "race"
    t.string   "dob"
    t.string   "sex"
    t.string   "orientation"
    t.string   "height"
    t.string   "weight"
    t.string   "build"
    t.string   "location"
    t.string   "interest"
    t.string   "occupation"
    t.string   "dating"
    t.text     "story"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",     null: false
    t.string   "encrypted_password",     default: "",     null: false
    t.string   "avatar"
    t.string   "user_name"
    t.string   "photo"
    t.string   "race"
    t.string   "dob"
    t.string   "location"
    t.string   "height"
    t.string   "occupation"
    t.string   "dating"
    t.text     "story"
    t.string   "role",                   default: "user", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,      null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,      null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
