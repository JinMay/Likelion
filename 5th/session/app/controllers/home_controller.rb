class HomeController < ApplicationController
  def index
      @posts = Post.all
  end


  def write
      post = Post.new
      post.title = params[:title]
      post.content = params[:content]
      if post.save
          redirect_to '/home/index'
      else
          render :text => 'fdsfdfs'
      end

    #   redirect_to '/home/index'
  end


  def reply_write
      reply = Reply.new
      reply.content = params[:reply]
      reply.post_id = params[:post_id]
      reply.save

      redirect_to '/home/index'
  end

end
