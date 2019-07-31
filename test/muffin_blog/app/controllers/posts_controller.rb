class PostsController < ApplicationController
  before_action :set_post, only: [:show]

  def new
  end

  def index
    @posts = Post.all

    response.write "<h1>The Muffin Blog</h1>"
    @posts.each do |post|
      response.write "<h2>#{post.title}<h2>"
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private
    
    def set_post
      @post = Post.find(params[:id])
    end
end
