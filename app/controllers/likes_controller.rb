class LikesController < ApplicationController
  def new
    @comment = Comment.find(params[:comment_id])
    @like = Like.new
    @like.comment_id = @comment.id
    @like.user_id = current_user.id
    @like.save
    respond_to do |format|
        format.js
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @comment = Comment.find(params[:comment_id])
    @like.destroy
    respond_to do |format|
      format.js
    end
  end
end
