class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
    
  end

  def index
    @posts = Post.includes(:city).all
  end


  def new
    @post = Post.new
    
  end

  def create
    @post = Post.new(post_params)
      if @post.save
         redirect_to posts_path
      else
          @post.category = Category.find(:category_id)
         render :new
      end
    end



  def edit
    @post = Post.find(params[:id])
  end

  
  def update
    @post = Post.find(params[:id])
      if @post.update(params[:post].permit(:title, :text))
        redirect_to @post
      else
        render 'edit'
      end
    end 
 

  def destroy 
    @post = Post.find(params[:id])
    @post.destroy
      redirect_to posts_path
    end

  def post_params
    params.require(:post).permit(:title, :pic, :remove_pic, :description, :price, :email, :city_id, :subdomain, :category_id)
  end
end

private

def load_blog
  @city = City.find_by_subdomain!(request.subdomain)
end


