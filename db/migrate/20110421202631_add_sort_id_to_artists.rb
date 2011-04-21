class AddSortIdToArtists < ActiveRecord::Migration
  def self.up
    add_column :artists, :sort_id, :integer
    add_column :non_artists, :sort_id, :integer
    add_index :artists, :sort_id
    add_index :non_artists, :sort_id
  end

  def self.down
    remove_index :non_artists, :sort_id
    remove_index :artists, :sort_id
    remove_column :non_artists, :sort_id
    remove_column :artists, :sort_id
  end
end