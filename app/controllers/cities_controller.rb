class CitiesController < ApplicationController

	def new
		@city = City.new
    # @post = @city.posts.create
	end

  def find
    @city = City.new
  end


	def edit
    @city = City.find(params[:id])
  end

  def create
    @city = City.new(city_params)
      if @city.save
         redirect_to cities_path
      else
        render 'new'
    end
  end


	def update
    @city = City.find(params[:id])
    if @city.update_attributes(params[:post])
      redirect_to root_url, notice: "Successfully updated City."
    else
      render :edit
    end
  end


  def index 
		@city = City.all
  end

  def show 
    @city = City.find(params[:id])
  end


	def destroy
    @city = City.find(params[:id])
    @city.destroy
    redirect_to root_url, notice: "Successfully destroyed city."
  end


  def city_params
    params.require(:city).permit(:name, :subdomain, :title)
  end
end
