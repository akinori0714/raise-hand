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

ActiveRecord::Schema.define(version: 20200229125614) do

  create_table "articles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title",      null: false
    t.string   "image_id",   null: false
    t.string   "context",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.string   "ancestry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chats", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "content"
    t.string   "image"
    t.integer  "community_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["community_id"], name: "index_chats_on_community_id", using: :btree
    t.index ["user_id"], name: "index_chats_on_user_id", using: :btree
  end

  create_table "communities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.string   "explain",    null: false
    t.string   "image_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_communities_on_name", unique: true, using: :btree
  end

  create_table "community_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "community_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["community_id"], name: "index_community_users_on_community_id", using: :btree
    t.index ["user_id"], name: "index_community_users_on_user_id", using: :btree
  end

  create_table "dms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "room_id"
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["room_id"], name: "index_dms_on_room_id", using: :btree
    t.index ["user_id"], name: "index_dms_on_user_id", using: :btree
  end

  create_table "entries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_entries_on_room_id", using: :btree
    t.index ["user_id"], name: "index_entries_on_user_id", using: :btree
  end

  create_table "projects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",          null: false
    t.string   "explain",       null: false
    t.string   "image_id",      null: false
    t.string   "chachcopy",     null: false
    t.string   "url",           null: false
    t.string   "area",          null: false
    t.string   "recruitamount", null: false
    t.string   "recruitperson", null: false
    t.string   "jointype",      null: false
    t.string   "reward",        null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "relationships", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "follow_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["follow_id"], name: "index_relationships_on_follow_id", using: :btree
    t.index ["user_id", "follow_id"], name: "index_relationships_on_user_id_and_follow_id", unique: true, using: :btree
    t.index ["user_id"], name: "index_relationships_on_user_id", using: :btree
  end

  create_table "rooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                                   null: false
    t.string   "sex",                                    null: false
    t.string   "age",                                    null: false
    t.string   "area",                                   null: false
    t.string   "skill",                                  null: false
    t.string   "performance",                            null: false
    t.string   "introduce",                              null: false
    t.string   "project",                                null: false
    t.string   "want_to_do",                             null: false
    t.string   "want_to_meet",                           null: false
    t.string   "image_id",               default: ""
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.integer  "category_id"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
    t.string   "join_type",                              null: false
    t.index ["category_id"], name: "index_users_on_category_id", using: :btree
  end

  add_foreign_key "chats", "communities"
  add_foreign_key "chats", "users"
  add_foreign_key "dms", "rooms"
  add_foreign_key "dms", "users"
  add_foreign_key "entries", "rooms"
  add_foreign_key "entries", "users"
  add_foreign_key "relationships", "users"
  add_foreign_key "relationships", "users", column: "follow_id"
  add_foreign_key "users", "categories"
end
