class Users::PostsController < ApplicationController
	def top
		@store = Store.all
  		@posts = Post.order(created_at: :desc).page(params[:page])
	end

	def about
	end
end
