class Users::RelationshipsController < ApplicationController
  before_action :authenticate_user!



  def create
    @store = Store.find(params[:store_id])
    @relationship = current_user.relationships.new(store_id: @store.id)
    @relationship.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @store = Store.find(params[:store_id])
    @relationship = current_user.relationships.find_by(store_id: @store.id)
    @relationship.destroy
    redirect_back(fallback_location: root_path)
  end
end