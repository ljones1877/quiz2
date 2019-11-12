class InfoController < ApplicationController
  def index
    @infos = Info.all
  end

  def new
    @info = info.new
  end
end
