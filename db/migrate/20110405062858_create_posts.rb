class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.text :summary
      t.text :body
      t.string :author
      t.boolean :featured
      t.string :featured_img_url
      t.datetime :published_date
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
