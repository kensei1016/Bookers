class BooksController < ApplicationController
  def top
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def show
  end

  def new
  end

  def create
    book = Book.new(book_params)
    book.save
    # 保存完了のメッセージ
    redirect_to books_path # 一覧画面へのリダイレクト
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
