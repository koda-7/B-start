class InformationsController < ApplicationController

  def index
    
  end

  def new
    @information = Information.new
  end
  
  def create
    @information = Information.new(information_params)
    if @information.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @information = Information.find(params[:id])
    @breed = Breed.find(params[:id])
  end

  private
  def information_params
    params.require(:information).permit(:breedname, :locality, :generation_id, :food_id, :memo).merge(breed_id: params[:breed_id])
  end
end
