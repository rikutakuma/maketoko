class Stores::SendsController < ApplicationController
  before_action :authenticate_store!
  before_action :ensure_correct_store, only:[:edit, :update, :destroy]

  def new
    @send = Send.new
  end

  def index

    @store = current_store
    @sends = @store.sends.order(created_at: :desc)
    @infomations = @store.infomations
  end

  def show
    @send = Send.find(params[:id])
    @store = @send.store
  end

  def create
    @send = Send.new(send_params)
    @send.store_id = current_store.id

    if @send.save
      redirect_to stores_sends_path(@send)
    else
      render "new"
    end
  end

  def edit
    @send = Send.find(params[:id])
  end

  def update
    @send = Send.find(params[:id])
    if @send.update(send_params)
      redirect_to stores_sends_path(@send)
    else
      render "edit"
    end
  end

  def delete
    @send = Send.find_by(id: params[:id])
    @send.delete
      redirect_to stores_sends_path(@send)
  end

  private

  def send_params
    params.require(:send).permit(:send_comment, :send_image, :store_id, :title)
  end

  def ensure_correct_store
    @send = Send.find(params[:id])
    if current_store != @send.store
      redirect_to stores_sends_path
    end
  end


end
