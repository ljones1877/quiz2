class InfosController < ApplicationController

  def index
    @infos = Info.all
  end

  def create
    current_user.infos.create(info_params)
    redirect_to root_path
  end

  def show
    @infos = Info.find(params[:id])
  end

  private

  def info_params
    params.require(:info).permit(:name, :information)
  end

end
