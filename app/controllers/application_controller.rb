class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def index
    if params[:search].present?
      @books = Search.new(query: params[:search]).results
      @categories = Search.new(query: params[:search]).results
    end
  end
end
