class PostsController < ApplicationController
  def new
  end

  def create
    redirect_to posts_index_path
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end
end
