class Api::StagesController < ApplicationController
  #localhost:3000/api/stages
  def index
    @stages = Stage.all
    render json: @stages.to_json(:only => [ :id, :name ])
  end

  def show
    @stage = Stage.find(params[:id])
    render json: @stage.to_json(include: :artists)
  end
end