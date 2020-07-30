class PostsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard
  
  def index
    @posts = Post.order("created_at DESC")
  end

  def create
    temp_content = params[:content].gsub! 'spoiler', ' '
    @post = Post.create(title: params[:title], image_url: params[:image_url], content: temp_content) 

  end

  def dashboard  
   
  end

end
