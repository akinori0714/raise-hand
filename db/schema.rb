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

ActiveRecord::Schema.define(version: 20200213131717) do

  create_table "communities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                    null: false
    t.string   "explain",                 null: false
    t.string   "image_id",   default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["name"], name: "index_communities_on_name", unique: true, using: :btree
  end

  create_table "communities_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "communities_id"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["communities_id"], name: "index_communities_users_on_communities_id", using: :btree
    t.index ["user_id"], name: "index_communities_users_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                                null: false
    t.string   "sex",                                 null: false
    t.string   "age",                                 null: false
    t.string   "area",                                null: false
    t.string   "work",                                null: false
    t.string   "industry",                            null: false
    t.string   "skill",                               null: false
    t.string   "performance",                         null: false
    t.string   "introduce",                           null: false
    t.string   "project",                             null: false
    t.string   "want_to_do",                          null: false
    t.string   "want_to_meet",                        null: false
    t.string   "join_type",                           null: false
    t.string   "image_id",               default: ""
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "communities_users", "communities", column: "communities_id"
  add_foreign_key "communities_users", "users"
end
