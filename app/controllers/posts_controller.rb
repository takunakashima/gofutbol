class PostsController < ApplicationController
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

  private

  def post_params
    params.require(:post).permit(:month_id, :day_id, :team_id, :content, :image ).merge(user_id: current_user.id)
  end

end
