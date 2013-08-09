class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @city = City.where(subdomain: request.subdomain).limit(1)
    @posts = @city.posts
    @category = Category.find(params[:id])
    @subdomain = request.subdomain
  end
end


