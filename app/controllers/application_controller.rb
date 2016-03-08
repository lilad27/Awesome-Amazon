class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def index
    @books = Book.all
    @categories = Category.all
    if params[:search]
      @books = Book.search(params[:search]).order("created_at DESC")
      @categories = Category.search(params[:search]).order("name DESC")
    else
        @books = Book.all.order('created_at DESC')
     end
  end
end
