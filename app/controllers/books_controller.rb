class BooksController < ApplicationController

before_action :find_book, only: [:show, :edit, :update, :destroy]


  def index
  	@books = Book.all.order("created_at DESC")
  end

  def new
  	@book = Book.new
  end

  def create
    @book = Book.new(book_params)
      if @book.save
        redirect_to root_path
      else
        render 'new'
      end
  end

  def show
  end
  
  def edit
  end

  def update
  end

  def destroy
  	@book.destroy
  end

private

  def book_params
  	params.require(:book).permit(:title, :description, :author)
  end

  def find_book
    @book = Book.find(params[:id])
  end
end
