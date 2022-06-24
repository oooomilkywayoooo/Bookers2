class BooksController < ApplicationController
  def new
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.new
    @book = Book.find(params[:id])
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(@book.id)
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end
end
