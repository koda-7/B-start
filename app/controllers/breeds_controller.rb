class BreedsController < ApplicationController

  def index
  end

  def new
    @breed = Breed.new
  end

  def create
    @breed = Breed.new(breed_params)
    if @breed.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @breed = Breed.find(params[:id])
  end

  private
  def breed_params
    params.require(:breed).permit(:title, :category_id, :type_name, :date, :result, :note, :image).merge(user_id: current_user.id)
  end

end