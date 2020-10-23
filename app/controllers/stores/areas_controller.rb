class Stores::AreasController < ApplicationController

  def index
  end

  def create
  	@area = Area.new
  end

  def edit
  	@area = Area.find(params[:id])
  end

  def update
  	@area = Area.find(params[:id])
  end
  
end
