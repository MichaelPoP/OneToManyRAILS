class BooksController < ApplicationController
  def index
    @authors = Author.find params[:author_id]
    @books = @author.books 
  end

  def new
    @authors = Author.find params[:author_id]
    @book = Book.new
  end

  def create
    @author = Author.find params[:author_id]
    @book = Book.new book_params
    # THIS MAKES SURE YOU ARE PUTTING IN THE PARAMS
    @book.author = @author
    if @book.save
      redirect_to author_books_path(@author)
    else
      render :new
    end
  end

  def show
    @book = Book.find params[:id]
    @author = @book.author
  end

  def edit
    @book = Book.find params[:id]
    @author = @book.author
  end

  def update
    @book = Book.find params[:id]
    @book.update_attribute book_params
    @author = @book.author
    if @book.save
      redirect_to book_path(@book)

    else
      render :edit
    end

  end

  def destroy 
    book = Book.find params[:id]
    book.destroy
    redirect_to author_books_path(book.author)
  end

  private 
  def book_params
    params.require(:book).permit(:title, :author_id)
  end
end
