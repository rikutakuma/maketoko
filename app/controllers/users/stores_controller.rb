class Users::StoresController < ApplicationController

  def index

    @areas = Area.where(is_active: true)

    if params[:area_id]
      @area = Area.find(params[:area_id])
      @stores = @area.store
    else
      @stores = Store.all
    end
  end

  def show
    @user = current_user
  	@store = Store.find(params[:id])
  	@sends = @store.sends.order(created_at: :desc)
    @infomations = @store.infomations
    
  end


  def relationship_ranking
    @all_ranks = Store.find(Relationship.group(:store_id).order('count(store_id) desc').limit(10).pluck(:store_id))
  end


end