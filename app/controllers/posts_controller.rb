class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = User.find(params[:user_id]).posts.find(params[:id])
  end
end
