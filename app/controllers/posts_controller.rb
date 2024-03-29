class PostsController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update]
   before_filter :authenticate_same_user, :only => [:destroy, :edit]
  def index
    @posts = Post.order('created_at DESC')

    respond_to do |format|
      format.html 
    end
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.create(params[:comment])
    respond_to do |format|
      format.html 
    end
  end

  def new
    @post = Post.new

    respond_to do |format|
      format.html 
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create

  @post = current_user.posts.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
    end
  end
end
