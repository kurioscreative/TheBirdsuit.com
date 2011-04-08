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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110408024754) do

  create_table "artists", :force => true do |t|
    t.string   "name"
    t.string   "bio_pic_url"
    t.string   "bio_pic_hover_url"
    t.text     "biography_text"
    t.string   "twitter_id"
    t.string   "roster_pic_url"
    t.string   "roster_pic_hover_url"
    t.string   "bio_video_url"
    t.string   "bio_video_id"
    t.string   "bio_video_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cached_slug"
    t.string   "bio_video_img_url"
    t.string   "bio_video_img_hover_url"
    t.string   "artist_home_img_url"
    t.string   "artist_home_img_hover_url"
  end

  add_index "artists", ["cached_slug"], :name => "index_artists_on_cached_slug"
  add_index "artists", ["name"], :name => "index_artists_on_name"

  create_table "pages", :force => true do |t|
    t.text     "body"
    t.string   "title"
    t.string   "page_img_url"
    t.string   "page_name"
    t.boolean  "activate_as_splash", :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["page_name"], :name => "index_pages_on_page_name", :unique => true

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "summary"
    t.text     "body"
    t.string   "author"
    t.boolean  "featured"
    t.string   "featured_img_url"
    t.datetime "published_date"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cached_slug"
  end

  add_index "posts", ["cached_slug"], :name => "index_posts_on_cached_slug"

  create_table "rails_admin_histories", :force => true do |t|
    t.string   "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_histories_on_item_and_table_and_month_and_year"

  create_table "releases", :force => true do |t|
    t.integer  "artist_id"
    t.string   "release_img_url"
    t.string   "release_img_hover_url"
    t.string   "video_type"
    t.string   "video_id"
    t.string   "video_url"
    t.string   "title"
    t.text     "description"
    t.boolean  "is_featured"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cached_slug"
  end

  add_index "releases", ["artist_id"], :name => "index_releases_on_artist_id"
  add_index "releases", ["cached_slug"], :name => "index_releases_on_cached_slug"

  create_table "slugs", :force => true do |t|
    t.string   "name"
    t.integer  "sluggable_id"
    t.integer  "sequence",                     :default => 1, :null => false
    t.string   "sluggable_type", :limit => 40
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "slugs", ["name", "sluggable_type", "sequence", "scope"], :name => "index_slugs_on_n_s_s_and_s", :unique => true
  add_index "slugs", ["sluggable_id"], :name => "index_slugs_on_sluggable_id"

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
