class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    
    @post = Place.new
    @post["title"] = params["post"]["title"]
    #@post["date"] = params["post"]["date"]
    @post["description"] = params["post"]["description"]
    
    @post.save

  end

end
