class InfoController < ApplicationController
  def index
    @infos = Info.all
  end
end
