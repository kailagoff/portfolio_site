class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.comment_author = current_user.username
    if @comment.save
      respond_to do |format|
        format.html { redirect_to post_url(@post) }
        format.js
      end
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to posts_path(@post)
  end

private
  def comment_params
    params.require(:comment).permit(:author, :comment_content)
  end
end
