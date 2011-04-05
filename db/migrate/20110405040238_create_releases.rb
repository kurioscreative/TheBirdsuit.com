class CreateReleases < ActiveRecord::Migration
  def self.up
    create_table :releases do |t|
      t.integer :artist_id
      t.string :release_img_url
      t.string :release_img_hover_url
      t.string :video_type
      t.string :video_id
      t.string :video_url
      t.string :title
      t.text :description
      t.boolean :is_featured

      t.timestamps
    end
    add_index :releases, :artist_id
  end

  def self.down
    remove_index :releases, :artist_id
    drop_table :releases
  end
end