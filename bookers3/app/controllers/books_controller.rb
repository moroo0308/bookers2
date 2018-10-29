class BooksController < ApplicationController
	before_action :authenticate_user!
	before_action :correct_user, only: [:edit, :update]
	def index
		@book = Book.new
		@books = Book.all
	end
	def show
		@book = Book.find(params[:id])
		@book1 = Book.new
	end
	def edit
		@book = Book.find(params[:id])
	end
	def create
		@book = Book.new(book_params)
		@books = Book.all
		@book.user_id = current_user.id
		if @book.save
			redirect_to book_path(@book), notice: "Book was successfully created"
		else
			render :index
		end
	end
	def destroy
		@book = Book.find(params[:id])
		@book.destroy
		redirect_to books_path
	end
	def update
		book = Book.find(params[:id])
		book.update(book_params)
		redirect_to book_path(book)
	end
	private
	def book_params
		params.require(:book).permit(:title, :opinion, :image)
	end
	def correct_user
    book = Book.find(params[:id])
    if current_user != book.user
      redirect_to books_path
    end
	end

end
