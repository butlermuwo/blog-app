class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(text: comment_params[:text], author_id: current_user.id, post_id: @post.id)

    if @comment.save
      redirect_to user_post_path(current_user.id, @post.id)
      flash[:notice] = 'A comment has been created successfully'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:comment_id])
    @post = @comment.post
    @post.comments_counter -= 1
    @comment.destroy

    flash[:notice] = 'comment was successfully deleted.'
    redirect_to user_post_path(@comment.post.author_id, @comment.post.id)
  end

  private

  def comment_params
    params.require(:comment).permit(:text).tap do |comment_params|
      comment_params.require(:text)
    end
  end
end
