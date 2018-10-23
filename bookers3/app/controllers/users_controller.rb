class UsersController < ApplicationController
	def index
		@users = User.all
		@user = User.new
		@book = Book.new
	end
	def new
		@user = User.new
	end
	def edit
		@user = User.find(params[:id])
	end
	
	end
