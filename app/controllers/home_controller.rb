class HomeController < ApplicationController

  def index
    @books = Book.all
      @books = @books.where('name like ?', "%#{params[:name]}%") if params[:name].present?


    # @books = @books.where(
    #   'name like ? or price like ? or publisher_id like ? or isbn10 like ? or isbn13 like ?',
    #   "%#{params[:name]}%", "%#{params[:name]}%", "%#{params[:name]}%","%#{params[:name]}%","%#{params[:name]}%") if params[:name].present?

end
end
