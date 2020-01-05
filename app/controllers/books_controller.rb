class BooksController < ApplicationController
  def top
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(@book) # 詳細画面へのリダイレクト
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path(@book) # 詳細画面へのリダイレクト
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end