class InfosController < ApplicationController

  def index
    @infos = Info.all
  end

  def new
    @info = Info.new
  end

  def create
    current_user.infos.create(info_params)
    redirect_to root_path
  end


  def show
    @info = Info.find(params[:id])
  end

  def edit
    @info = Info.find(params[:id])
  end

  def update
    @info = Info.find(params[:id])
    @info.update_attributes(info_params)
    redirect_to root_path
  end

  def destroy
  @info = Info.find(params[:id])
  @info.destroy
  redirect_to root_path
end
 
  private

  def info_params
    params.require(:info).permit(:name, :information)
  end

end
