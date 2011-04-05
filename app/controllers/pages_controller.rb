class PagesController < ApplicationController
      # layout 'blog', :only => 'blog'

  def home
    @featured = Post.where(:featured => true).first
    @artists = Artist.limit(3)
    @release = Release.first    
  end
  
  def story
    
  end
  
  def contact
    
  end
  
  def blog

  end
  
  def artists
    
  end
end