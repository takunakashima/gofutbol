class CommentChannel < ApplicationCable::Channel
  def subscribed
    @post = Post.find(params[:post_id]) # 追記
    stream_for @post # 追記
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end