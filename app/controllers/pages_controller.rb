class PagesController < ApplicationController

  def home
    splash = Page.find_by_page_name("splash")
    
    redirect_to promo_path if splash.activate_as_splash?
    

    @featured = Post.published.where(:featured => true).first
    @artists = Artist.limit(3)
    @release = Release.where(:is_featured => true).first
  end
  
  def story
    @page = Page.find_by_page_name("about")
    @artists = Artist.limit(3)
  end
  
  def contact
    @page = Page.find_by_page_name("contact")
  end
  
  def promo
    @page = Page.find_by_page_name("splash")
  end
  
    
  
end