class AddArtistHomeImgToArtists < ActiveRecord::Migration
  def self.up
    add_column :artists, :artist_home_img_url, :string
    add_column :artists, :artist_home_img_hover_url, :string
  end

  def self.down
    remove_column :artists, :artist_home_img_hover_url
    remove_column :artists, :artist_home_img_url
  end
end
