class StagesController < ApplicationController
  #localhost:3000/stages
  def index
    @stages = Stage.all
  end

  def show
    @stage = Stage.find(params[:id])
  end
end