class UsersController < ApplicationController
	before_action :authenticate_user!
	before_action :correct_user, only: [:edit, :update]
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
		@user1 = User.find(params[:id])
	end
	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to user_path(@user)
		else
			render :edit
		end
	end
	private
	def user_params
		params.require(:user).permit(:name, :image, :introduction)	 
		                           # :introduction追加
	end
	def correct_user
    user = User.find(params[:id])
    if current_user != user
      redirect_to user_path
    end
  end
end
