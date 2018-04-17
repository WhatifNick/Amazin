class BooksController < ApplicationController
  def index
    @books = Book.order(rating: :desc)
  end
  def show
    @book = Book.find(params[:book_id])
  end
end
