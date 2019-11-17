class InfoController < ApplicationController
 before_action :authenticate_user!

  def new
  end

  def index
    @infos = Info.all
  end

  def show
    @infos = Info.find(params[:id])
  end

  private

  def info_params
    params.require(:info).permit(:name, :information)
  end

end
