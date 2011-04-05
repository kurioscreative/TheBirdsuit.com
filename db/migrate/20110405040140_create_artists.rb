class CreateArtists < ActiveRecord::Migration
  def self.up
    create_table :artists do |t|
      t.string :name
      t.string :bio_pic_url
      t.string :bio_pic_hover_url
      t.text :biography_text
      t.string :twitter_id
      t.string :roster_pic_url
      t.string :roster_pic_hover_url
      t.string :bio_video_url
      t.string :bio_video_id
      t.string :bio_video_type

      t.timestamps
    end
    add_index :artists, :name
  end

  def self.down
    remove_index :artists, :name
    drop_table :artists
  end
end