class PostsController < ApplicationController
  def index
    @featured = Post.published.where(:featured => true).first
    @posts = Post.published.where("id != '#{@featured.id}' ").all
    @artists = Artist.all
    @latest_release = Release.where(:is_featured => true).first
  end
  
  def show
    @post = Post.published.find(params[:id])
    @artists = Artist.all
  end
end