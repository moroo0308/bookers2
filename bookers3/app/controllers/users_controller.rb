class UsersController < ApplicationController
	def index
		@users = User.all
		@user = User.new
		
	end
	def new
		
	end
	def edit
		@user = User.find(params[:id])
	end
	
	end
