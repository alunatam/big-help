# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20081110221336) do

  create_table "messages", :force => true do |t|
    t.integer  "ticket_id",  :limit => 11
    t.integer  "user_id",    :limit => 11
    t.string   "name"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tickets", :force => true do |t|
    t.string   "token"
    t.string   "status"
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "domain"
    t.string   "custom"
    t.integer  "category_id", :limit => 11
    t.text     "body"
    t.boolean  "urgent",                    :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.string   "phone"
    t.boolean  "email_alerts"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
