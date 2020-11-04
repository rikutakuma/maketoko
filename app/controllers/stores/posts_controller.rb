class Stores::PostsController < ApplicationController
  before_action :authenticate_store!
  before_action :ensure_correct_store, only:[:edit, :update, :destroy]

  def new
    @post = Post.new
  end

  def index
    @store = current_store
    @posts = @store.posts.order(created_at: :desc).page(params[:page]).per(10)
    @infomations = @store.infomations
  end

  def show
    @post = Post.find(params[:id])
    @store = @post.store
  end

  def create
    @post = Post.new(post_params)
    @post.store_id = current_store.id
    if @post.save
        tag_list = Vision.get_image_data(@post.send_image)
        tag_list.each do |tag|
          @post.tags.create(name: tag)
        end
        redirect_to stores_posts_path(@post)
    else
      render "new"
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
        tag_list = Vision.get_image_data(@post.send_image)
        tag_list.each do |tag|
          @post.tags.update(name: tag)
        end
        redirect_to stores_posts_path(@post)
    else
      render "edit"
    end
  end

  def delete
    @post = Post.find_by(id: params[:id])
    @post.delete
      redirect_to stores_posts_path(@post)
  end

  private

  def post_params
    params.require(:post).permit(:send_comment, :send_image, :store_id, :title)
  end

  def ensure_correct_store
    @post = Post.find(params[:id])
    if current_store != @post.store
      redirect_to stores_posts_path
    end
  end
end
