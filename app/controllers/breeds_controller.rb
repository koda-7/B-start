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
      render.new
    end
  end

  private

  def breed_params
    prams.require(:breed).permit(:title, :category_id, :type_name, :data, :result, :text, :image).maerge(uesr_id: current_user.id)
  end
end