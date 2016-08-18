class PostsController < ApplicationController
  def index
    @title = "/docs"
    @post = Post.last
  end

  def new
    
  end

  def create
    @post = current_user.posts.build(post_params)
    @post.save
    redirect_to @post
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
