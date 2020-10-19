class Users::SendsController < ApplicationController
	before_action :authenticate_user!, only: [:index, :show]
	def top
		@store = Store.all
  		@sends = Send.order(created_at: :desc)
	end

	def about
	end

	def index
		@user = current_user
		@relationships = Relationship.all
	end

	def show

	end
end
