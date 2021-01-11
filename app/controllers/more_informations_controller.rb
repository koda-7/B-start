class MoreInformationsController < ApplicationController

  def new
    # @breed = Breed.find(params[:breed_id])
    # @information = Information.find(params[:information_id])
    @more_information = MoreInformation.new
  end

  def create
    # binding.pry
    @more_information = MoreInformation.new(more_inf_params)
    if @more_information.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @breed = Breed.find(params[:id])
    @information = Information.find(params[:breed_id])
    @more_information = MoreInformation.find(params[:information_id])
  end

  private

  def more_inf_params
    params.require(:more_information).permit(:number, :size, :sex_id, :birthday, :memos).merge(information_id: params[:information_id])
  end
end
