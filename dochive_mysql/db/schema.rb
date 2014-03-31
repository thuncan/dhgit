# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140329015756) do

  create_table "assets", force: true do |t|
    t.integer  "document_id"
    t.integer  "page_id"
    t.integer  "section_id"
    t.string   "path"
    t.string   "url"
    t.string   "filename"
    t.string   "tpath"
    t.string   "turl"
    t.string   "tfilename"
    t.string   "language"
    t.string   "value"
    t.integer  "primary_language_id"
    t.integer  "secondary_language_id"
    t.string   "alternate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "builders", force: true do |t|
    t.integer  "page_id"
    t.string   "name"
    t.integer  "yOrigin"
    t.integer  "xOrigin"
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data", force: true do |t|
    t.integer  "document_id"
    t.integer  "template_id"
    t.integer  "page_id"
    t.string   "path"
    t.string   "url"
    t.string   "filename"
    t.string   "description"
    t.boolean  "public"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "documents", force: true do |t|
    t.integer  "user_id"
    t.integer  "phase_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "source_file_name"
    t.string   "source_content_type"
    t.integer  "source_file_size"
    t.datetime "source_updated_at"
  end

  create_table "groups", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "description"
    t.boolean  "public"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", force: true do |t|
    t.string   "full"
    t.string   "short"
    t.boolean  "enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.integer  "document_id"
    t.integer  "user_id"
    t.integer  "template_id"
    t.integer  "language_id"
    t.integer  "primary_language_id"
    t.integer  "secondary_language_id"
    t.integer  "number"
    t.integer  "dpi"
    t.integer  "height"
    t.integer  "width"
    t.integer  "top"
    t.integer  "bottom"
    t.integer  "left"
    t.integer  "right"
    t.string   "path"
    t.string   "url"
    t.string   "filename"
    t.boolean  "exclude"
    t.boolean  "public"
    t.integer  "templatex"
    t.integer  "templatey"
    t.boolean  "tyndale"
    t.boolean  "modified"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phases", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", force: true do |t|
    t.integer  "template_id"
    t.string   "name"
    t.integer  "yOrigin"
    t.integer  "xOrigin"
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "settings", force: true do |t|
    t.integer  "user_id"
    t.integer  "default_template"
    t.integer  "default_language"
    t.string   "default_notification"
    t.boolean  "notify_complete"
    t.integer  "trimLeft"
    t.integer  "trimRight"
    t.integer  "trimTop"
    t.integer  "trimBottom"
    t.integer  "primary_language_id"
    t.integer  "secondary_language_id"
    t.boolean  "tyndale"
    t.string   "translate_api"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "styles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "templates", force: true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.integer  "style_id"
    t.integer  "type_id"
    t.string   "name"
    t.string   "description"
    t.string   "path"
    t.string   "url"
    t.string   "filename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tyndales", force: true do |t|
    t.string   "full"
    t.string   "short"
    t.boolean  "enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
