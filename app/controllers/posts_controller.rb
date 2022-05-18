class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts.includes(:comments)
    @current_person = @user
  end

  def show
    @post = User.find(params[:user_id]).posts.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @post = @user.posts.new
  end

  def create
    @user = User.find(params[:user_id])
    new_post = @user.posts.new(post_params)
    new_post.likes_counter = 0
    new_post.comments_counter = 0
    respond_to do |format|
      format.html do
        if new_post.save
          redirect_to user_posts_path(params[:user_id])
          flash[:notice] = 'Post was successfully created.'
        else
          render :new, alert: 'Error occurred, please try again. Post not saved'
        end
      end
    end
  end

  def destroy
    post = Post.find(params[:id])
    user = User.find(post.author_id)
    user.posts_counter -= 1
    post.destroy
    user.save
    flash[:alert] = 'You have successfully deleted the post!'
    redirect_to user_posts_path(post.author_id)
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
