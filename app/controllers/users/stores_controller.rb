class Users::StoresController < ApplicationController
  before_action :authenticate_user!

  def index

    @areas = Area.where(is_active: true)

    if params[:area_id]
      @area = Area.find(params[:area_id])
      @stores = @area.store
      @stores_count = @area.store.count
    else
      @stores = Store.all
      @stores_count = Store.count
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

def area_ranking
  @areas = Area.where(is_active: true)
  if params[:area_id]
    @area = Area.find(params[:area_id])
  end

    @all_ranks = Store.find(Relationship.group(:store_id).order('count(store_id) desc').limit(10).pluck(:store_id))
    @area_ranks = @all_ranks.select{ |store| store.area_id == @area.id }
  end

end