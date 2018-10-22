class BooksController < ApplicationController
	def index
		@book = Book.new
		@books = Book.all
	end
	def new
		
	end
	def show
		@book = Book.find(params[:id])
	end
	def edit
		@book = Book.find(params[:id])
	end
	def create
		@book = Book.new(book_params)
		@book.user_id = current_user.id
		@book.save
		redirect_to book_path(@book)
	end
	private
	def book_params
		params.require(:book).permit(:title, :opinion)	
	end

end
