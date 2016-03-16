class PostsController < ApplicationController
  def index
     @posts = Post.all
  end

  def show
     @post = Post.find_by id: params[:id]
  end

  def new
     @post = Post.new
  end

  def create
    @post = Post.new
    @post.text = params[:post][:text]
    @post.user = @current_user
    if @post.save
    redirect_to posts_path
    else
      render :new
    end
  end

  def delete
    @post = Post.find_by id: params[:id]
    @post.destroy
    redirect_to posts_path
  end
end
