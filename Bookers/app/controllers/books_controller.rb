class BooksController < ApplicationController
  def show
  end

  def index
  	@books = Book.all
  end

  def new
  end

  def edit
  end
end
