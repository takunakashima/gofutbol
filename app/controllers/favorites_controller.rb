class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_like

  def create
      user = current_user
      post = Post.find(params[:post_id])
      favorite = Favorite.create(user_id: user.id, post_id: post.id)
  end
  def destroy
      user = current_user
      post = Post.find(params[:post_id])
      favorite = Favorite.find_by(user_id: user.id, post_id: post.id)
      favorite.delete
  end

  private
  def set_like
      @post = Post.find(params[:post_id])
  end
end