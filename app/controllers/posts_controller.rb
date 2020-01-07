class PostsController < ApplicationController


  def new
    @post = Post.new
  end

  def show
    @post = set_post
  end

  def edit
    @post = set_post
  end

  def create
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def update
    @post = set_post
    @post.update(post_params)
    if @post.valid?
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def set_post
    Post.find(params[:id])
  end

  def post_params
    params.permit(:title, :category, :content)
  end
end
