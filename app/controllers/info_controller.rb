class InfoController < ApplicationController
  def index
    @infos = Info.all
  end

  def new
    @info = Info.new
  end

  def create
    Info.create(info_params)
    redirect_to root_path
  end

  private

  def info_params
    params.require(:info).permit(:name, :information)
  end

  def show
    @info = Info.find
  end
end
