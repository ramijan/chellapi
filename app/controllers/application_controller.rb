class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authorize
    token_exists = ApiKey.find_by(token: params[:token])
    render json: "Authentication required" unless token_exists
  end



end
