class MoreInformationsController < ApplicationController

  def new
    @more_information = More_information.new
  end

  def create
    @more_information = More_information.new(more_inf_params)
    if @more_information.save
      redirect_to root_path
    else
      render new
    end
  end

  private

  def more_inf_params
    params.require(:more_information).permit(:number, :size, :sex_id, :birthday, :memos).merge(information_id: params[:information_id])
  end
end
