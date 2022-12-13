class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  #コメントアウト
  #def new
  #end

  def create
    Post.create(content: params[:content])
    redeirect_to action: :index
  end
end
