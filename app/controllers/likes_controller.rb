class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    @post = Post.find(params[:post_id])
    @like = @post.likes.new(author_id: current_user.id, post_id: @post.id)

    if @like.save
      redirect_to user_post_path(current_user.id, @post.id)
      flash[:notice] = 'Like has been created!'
    else
      render :new, status: :unprocessable_entity
    end
  end
end
