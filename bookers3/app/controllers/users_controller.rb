class UsersController < ApplicationController
	def index
		@users = User.all
		@user = User.new
		@book = Book.new
	end
	
	def edit
		@user = User.find(params[:id])
	end
	def show
		@user = User.find(params[:id])
		@book = Book.new
	end
	def update
		
	end
end