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

ActiveRecord::Schema.define(:version => 20110405040238) do

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
  end

  add_index "artists", ["name"], :name => "index_artists_on_name"

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
  end

  add_index "releases", ["artist_id"], :name => "index_releases_on_artist_id"

end
