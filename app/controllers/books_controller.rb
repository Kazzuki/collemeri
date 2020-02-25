class BooksController < ApplicationController
  before_action :set_books, only: [:destroy]

  def index
    @books = User.find(current_user.id).books
  end

  def new
    @book = Book.new
  end

  def create
    user = current_user
    @book = user.books.build(book_params)

    if @book.save
      redirect_to books_url
    else
      render :new
    end

  end

  def show
  end

  def edit
  end

  def destroy
    @book.destroy
    redirect_to books_url
  end

  private
    def set_books
      @book = current_user.books.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :publisher, :image)
    end

end
