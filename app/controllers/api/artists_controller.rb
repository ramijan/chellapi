class Api::ArtistsController < ApplicationController

  before_action :authorize

  def show
    @artist = Artist.find(params[:id])
    render json: @artist.to_json(:include => :stage)
  end
end