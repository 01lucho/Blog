class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])

    if @comment.save
      UserMailer.registration_confirmation(@comment).deliver
      redirect_to @post
    else
      flash[:error] = "There were some errors creating your comment"
      redirect_to @post.errors
    end    
  end
end
