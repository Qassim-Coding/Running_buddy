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

ActiveRecord::Schema[7.1].define(version: 2024_07_25_081823) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "meetings", force: :cascade do |t|
    t.date "date"
    t.string "location"
    t.string "weather_report"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time "time"
    t.index ["user_id"], name: "index_meetings_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id", null: false
    t.bigint "relationship_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["relationship_id"], name: "index_messages_on_relationship_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.boolean "status"
    t.bigint "asker_id"
    t.bigint "receiver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asker_id"], name: "index_relationships_on_asker_id"
    t.index ["receiver_id"], name: "index_relationships_on_receiver_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name"
    t.string "first_name"
    t.string "address"
    t.string "picture"
    t.text "description"
    t.string "phone_number"
    t.integer "running_pace"
    t.string "next_official_running_event"
    t.text "preparation"
    t.string "how_long_have_you_been_running"
    t.integer "run_frequency"
    t.text "other_sport"
    t.string "preference_date"
    t.integer "preference_hour"
    t.integer "relationship_number"
    t.integer "meeting_number"
    t.float "latitude"
    t.float "longitude"
    t.string "previous_run1"
    t.string "previous_run2"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_meetings", force: :cascade do |t|
    t.bigint "meeting_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meeting_id"], name: "index_users_meetings_on_meeting_id"
    t.index ["user_id"], name: "index_users_meetings_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "meetings", "users"
  add_foreign_key "messages", "relationships"
  add_foreign_key "messages", "users"
  add_foreign_key "relationships", "users", column: "asker_id"
  add_foreign_key "relationships", "users", column: "receiver_id"
  add_foreign_key "users_meetings", "meetings"
  add_foreign_key "users_meetings", "users"
end
