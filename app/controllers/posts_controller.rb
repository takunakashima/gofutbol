class PostsController < ApplicationController
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]

  def index
    @post = Post.all.order(id: :DESC)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end  
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.includes(:user)
    @comment = Comment.new
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    if @post.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end  
  end

  private

  def post_params
    params.require(:post).permit(:month_id, :day_id, :team_id, :content, :image ).merge(user_id: current_user.id)
  end

  def contributor_confirmation
    @post = Post.find(params[:id])
     unless current_user == @post.user
      redirect_to root_path
     end
  end
end
