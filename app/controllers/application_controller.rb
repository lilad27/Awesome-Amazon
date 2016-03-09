class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def index
    if params[:search].present?
      @books = Book.search(params[:search])
      @categories = Category.search(params[:search])
      @results = (@books + @categories).take(10).shuffle
    end
  end
end
