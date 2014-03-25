class PostsController < ApplicationController
	def index
		@posts = User.find(params[:user_id]).posts		
	end
end