class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:success] = "Successfully created a new book!"
      redirect_to @book
    else
      render 'new'
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:success] = "Successfully updated"
      redirect_to @book
    else
      render :edit
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  private
    def book_params
      params.require(:book).permit(
        :title, :author, :publisher, :published_year, :isbn
      )
    end
end
