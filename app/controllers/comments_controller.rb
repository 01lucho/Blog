class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    UserMailer.registration_confirmation(@comment).deliver
      respond_to do |format|
          format.html { redirect_to post_path(@post) }
          format.js
      end 
  end
end
