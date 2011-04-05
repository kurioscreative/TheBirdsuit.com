class PostsController < ApplicationController
  def index
    @featured = Post.where(:featured => true).first
    @posts = Post.where("id != '#{@featured.id}' ").all
    @artists = Artist.all
  end
  
  def show
    @post = Post.find(params[:id])
    @artists = Artist.all
  end
end