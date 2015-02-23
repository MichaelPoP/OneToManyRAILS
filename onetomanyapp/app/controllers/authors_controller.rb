class AuthorsController < ApplicationController

# @book = Book.find params[:id]
# @author = @book.author


  
  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def show
    @author = Author.find params[:id]
  end

  def edit
    @author = Author.find params[:id]
  end

  def create
    @author = Author.new author_params
    if @author.save
    redirect_to authors_path
    else
      render :new
    end 
  end

  def update
    @author = Author.find params[:id]
    if @author.update_attribute author_params
      redirect_to author_path(@author)
    else 
      render :edit
    end
  end

  def destroy
    author = Author.find params[:id]
    author.destroy
    redirect_to authors_path
  end

  private
  def author_params
    params.require(:author).permit(:name)
  end
end
