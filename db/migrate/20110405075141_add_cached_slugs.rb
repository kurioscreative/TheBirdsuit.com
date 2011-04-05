class AddCachedSlugs < ActiveRecord::Migration
  def self.up
    add_column :artists, :cached_slug, :string
    add_column :posts, :cached_slug, :string
    add_column :releases, :cached_slug, :string
    add_index :artists, :cached_slug
    add_index :posts, :cached_slug
    add_index :releases, :cached_slug
  end

  def self.down
    remove_index :releases, :cached_slug
    remove_index :posts, :cached_slug
    remove_index :artists, :cached_slug
    remove_column :releases, :cached_slug
    remove_column :posts, :cached_slug
    remove_column :artists, :cached_slug
  end
end