class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.text :body
      t.string :title
      t.string :page_img_url
      t.string :page_name
      t.boolean :activate_as_splash, :default => false

      t.timestamps
    end
    add_index :pages, :page_name, :unique => true
  end

  def self.down
    remove_index :pages, :column => :page_name
    drop_table :pages
  end
end