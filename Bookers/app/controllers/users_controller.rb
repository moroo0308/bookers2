class UsersController < ApplicationController
	def new
		@user = User.new
    end
    def create
    end
    def index
    	@users = User.all
    	@user = User.new

    end
    def show
        @user = User.find(params[:id])

    end
end
