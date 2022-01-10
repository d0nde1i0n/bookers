class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created"
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end

  def index
    @books = Book.all
  end

  def show
    @book =Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    if  book.update(book_params)
      redirect_to book_path(book.id),notice: 'Book was successfully updated'
    else
      book = Book.find(params[:id])
      render :edit
    end
  end

  def destroy
    book = Book.find(params[:id])
    if book.destroy
      redirect_to books_path,notice: 'Book was successfully destroyed'
    else
      render :index
    end
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title,:body)
  end
end

