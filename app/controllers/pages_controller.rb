class PagesController < ApplicationController
      # layout 'blog', :only => 'blog'

  def home
    @featured = Post.published.where(:featured => true).first
    @artists = Artist.limit(4)
    @release = Release.first    
  end
  
  def story
    @artists = Artist.limit(3)
  end
  
  def contact
    
  end
  
  def blog

  end
  
  def artists
    
  end
end