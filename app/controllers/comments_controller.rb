class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def destroy
  end
  
  def update
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id)
  end
end
