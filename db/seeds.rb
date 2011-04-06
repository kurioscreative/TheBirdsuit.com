# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

about = Page.create(:body => "Lorem ipsum est.", :title=> "We Are The Birdsuit", :page_name => "about", :page_img_url => "http://placehold.it/910x250")

contact = Page.create(:body => "Lorem ipsum est.", :title=> "Contact Information", :page_name => "contact", :page_img_url => "http://placehold.it/910x250")

splash = Page.create(:body => "Splash page.", :title => "Splash Title", :page_name => "splash", :page_img_url => "http://placehold.it/910400", :activate_as_splash => true)

