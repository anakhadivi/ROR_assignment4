class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def destroy
		@user = User.where(id: params[:id]).first.destroy
		if @user.destroy
			flash[:notice] = 'User #{user.fname} has been destroyed!'
			redirect_to '/users'
		else
			flash[:alert] = 'There was a problem deleting this user :('
			redirect_to '/users'
		end
	end
end