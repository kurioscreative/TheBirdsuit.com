class PostsController < ApplicationController
  def index
    @featured = Post.published.where(:featured => true).first
    @posts = Post.published.where("id != '#{@featured.id}' ").paginate(:page => params[:page], :per_page => 6)
    @artists = Artist.all
    @nonartists = NonArtist.all
    @latest_release = Release.where(:is_featured => true).first



  end
  
  def show
    @post = Post.published.find(params[:id])
    @artists = Artist.all
    @nonartists = NonArtist.all
    @latest_release = Release.where(:is_featured => true).first
  end
end