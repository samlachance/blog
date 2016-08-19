class PostsController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create]
  def index
    @title = "/docs"
    @post = Post.last
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to @post
    else 
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(params[:post].permit(:title, :body))
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
    @title = "/docs/#{@post.title}"
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
