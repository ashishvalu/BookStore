class BooksController < ApplicationController
  def index
    # console
    # byebug

    @books = Book.page(params[:page]).per(4)
    @books = if params[:order] == "high_to_low"
      @books.high_to_low
    elsif params[:order] == "low_to_high"
      @books.low_to_high
    elsif params[:order] == "latest_books"
      @books.latest_books
    else
      @books.old_books
    end
    @books = @books.where('name like ?', "%#{params[:name]}%") if params[:name].present?
    @books = @books.where(categary_id: params[:categary_id]) if params[:categary_id].present?

  end

  def show
    @books = Book.find_by(id: params[:id])
  end

  def new
  end

  def edit
  end

  def book_params
    params.require(:book).permit(:name, :price, :publisher_id, :categary_id, :isbn10, :isbn13, :language, :image)
  end
end
