class PostsController < ApplicationController
  
  before_filter :authorize, except: [:index, :show]

  def index
    @posts = Post.all
    render :index
  end

  def new
    @post = Post.new
    render :new
  end

  def create
    @post = current_user.posts.create(post_params)
    redirect_to post_path(@post)
  end

  def show
    @post = Post.find(params[:id])
    render :show
  end

  def edit
    @post = Post.find(params[:id])
    if current_user.posts.include? @post
      render :edit
    else
      redirect_to profile_path
    end
  end

  def update
    post = Post.find(params[:id])
    if current_user.posts.include? post
        post.update_attributes(post_params)
        redirect_to post_path(post)
    else
      redirect_to profile_path
    end
  end

  def destroy
    post = Post.find(params[:id])
    if current_user.posts.include? post
      post.destroy
      redirect_to profile_path
    else
      redirect_to login_path
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
  
end
