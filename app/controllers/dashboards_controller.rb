class DashboardsController < ApplicationController
  def index
    @posts = Post.paginate page: params[:page], per_page: 1
    if params[:search].present?
      @parameter = params[:search].downcase
      posts = Post.all.where("lower(title) LIKE :search", search: "%#{@parameter}%")
      @posts = posts.paginate page: params[:page], per_page: 1
    end
  end

  def update_profile
    
  end
end
