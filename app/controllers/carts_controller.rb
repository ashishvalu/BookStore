class CartsController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @books = Book.find_by(id: params[:id])
  end
end
