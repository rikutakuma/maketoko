class Users::SendsController < ApplicationController

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
