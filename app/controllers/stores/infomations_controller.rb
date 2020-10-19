class Stores::InfomationsController < ApplicationController
  before_action :authenticate_store!
  before_action :ensure_correct_store, only: [:edit, :update, :destroy]

  def new
    @infomation = Infomation.new
  end

  def show
    @infomation = Infomation.find(params[:id])
    @store = @infomation.store
  end

  def create
    @infomation = Infomation.new(infomation_params)
    @infomation.store_id = current_store.id

    if @infomation.save
      redirect_to stores_sends_path(@send)
    else
      render "new"
    end
  end

  def edit
    @infomation = Infomation.find(params[:id])
  end

  def update
    @infomation = Infomation.find(params[:id])
    if @infomation.update(infomation_params)
      redirect_to stores_sends_path(@send)
    else
      render "edit"
    end
  end

  def destroy
    @infomation = Infomation.find_by(id: params[:id])
    @infomation.destroy
      redirect_to stores_sends_path(@send)
  end

  private

  def infomation_params
    params.require(:infomation).permit(:introduction, :info_image, :store_id, :titles)
  end

  def ensure_correct_store
    @infomation = Infomation.find(params[:id])
    if current_store != @infomation.store
      redirect_to stores_sends_path
    end
  end
end
