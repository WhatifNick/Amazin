class BooksController < ApplicationController
  def index
    @books = Book.order(rating: :desc)
    filter_params.each do |key, value|
      @books = @books.public_send(key, value) if value.present?
    end
  end
  def show
    @book = Book.find(params[:book_id])
  end

  private

  def filter_params
  params.slice(:book_name, :author_name)
  end
end
