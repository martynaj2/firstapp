class PostsController < ApplicationController
  # def index
  #   @posts = Post.all

  def post
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end


  def update
    @post = Post.find(params[:id])
      if @post.update(post_params)
        redirect_to posts_path,  notice: 'Post was updated'
      else
        render :edit
      end
  end


  def create
    @post = Post.new(post_params)
      if @post.save
        redirect_to posts_path, notice: 'Post created'
      else
        redirect_to posts_path, alert: 'Something went wrong'
      end
  end

  def destroy
    post = Post.find(params[:id])
    if post.destroy
      redirect_to posts_path, notice: 'Post was deleted'
    else
      redirect_to posts_path, alert: 'Error'
    end
  end



  private

  def post_params
      params.require(:post).permit(:title, :content, :autor_id)
  end

end
