class Users::StoresController < ApplicationController

  def index
  	@stores = Store.all
  end

  def show
  	@store = Store.find(params[:id])
  	@sends = @store.sends.order(created_at: :desc)
    @infomations = @store.infomations
  end

  def favo_ranking
  end

  def follow_ranking
  end

 
end

