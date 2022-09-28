class PostsController < ApplicationController
  def index
  end

  def new
    @post = current_user.posts.build()
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to root_path, notice:"Post Succusfully created!"
    else
      render :new
    end
  end

  private

  def post_params
    params.permit(:title, :description, :tags, images: [])
  end
end
