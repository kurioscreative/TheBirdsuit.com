# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

user = User.create(:email => "glenn@kurioscreative.com", :password => "test", :password_confirmation => "test")

about = Page.create(:body => "Lorem ipsum est.", :title=> "We Are The Birdsuit", :page_name => "about", :page_img_url => "http://placehold.it/910x250")

contact = Page.create(:body => "Lorem ipsum est.", :title=> "Contact Information", :page_name => "contact", :page_img_url => "http://placehold.it/910x250")

splash = Page.create(:body => "Splash page.", :title => "Splash Title", :page_name => "splash", :page_img_url => "http://placehold.it/910400", :activate_as_splash => false)

post = Post.create(:title => "First Post", :summary => "Lorem ipsum", :body => "Lorem ipsum est dolorum.", :author => "The Birdsuit", :published_date => DateTime.now)

featured_post = Post.create(:title => "Featured Post", :summary => "Lorem ipsum", :body => "Lorem ipsum est dolorum.", :author => "The Birdsuit", :featured => true, :featured_img_url => "http://placehold.it/590x300", :published_date => DateTime.now)

artist = Artist.create(:name => "Matty Mayz", :bio_pic_url => "http://placehold.it/220x280", :bio_pic_hover_url => "http://placehold.it/220x280", :biography_text => "Lorem ipsum", :twitter_id => "MattyMayz", :roster_pic_url => "http://placehold.it/270x100", :roster_pic_hover_url => "http://placehold.it/270x100", :bio_video_img_url => "http://placehold.it/270x16", :bio_video_img_hover_url => "http://placehold.it/270x16")

release = Release.create(:artist_id => artist.id, :release_img_url => "http://placehold.it/270x160", :release_img_hover_url => "http://placehold.it/270x160", :video_url => "http://vimeo.com/21919856", :title => "Test Release", :description => "Test video", :is_featured => false)

featured_release = Release.create(:artist_id => artist.id, :release_img_url => "http://placehold.it/270x160", :release_img_hover_url => "http://placehold.it/270x160", :video_url => "http://vimeo.com/21919856", :title => "Test Featured", :description => "Test video", :is_featured => true)

