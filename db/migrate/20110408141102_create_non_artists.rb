class CreateNonArtists < ActiveRecord::Migration
  def self.up
    create_table :non_artists do |t|
      t.string :email
      t.string :name
      t.string :roster_img_url
      t.string :roster_img_hover_url

      t.timestamps
    end
  end

  def self.down
    drop_table :non_artists
  end
end
