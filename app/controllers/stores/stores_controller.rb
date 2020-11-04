
class Stores::StoresController < ApplicationController
  before_action :authenticate_store!
  before_action :set_current_store


  def show
  end

  def edit
  end

  def update
    if @store.update(store_params)
      redirect_to stores_mypage_path
    else
      render :edit
    end
  end

  def destroy_all
    @store.destroy
    redirect_to root_path, notice: "ご利用、ありがとうございました。"
  end

  def unsubscribe

  end

  private

  def set_current_store
    @store = current_store
  end

  def store_params
    params.require(:store).permit(:corporation_name, :store_name, :email, :postal_code, :address, :telephone_number, :store_introduction, :store_image, :area_id, :latitude, :longitude)
  end

end
