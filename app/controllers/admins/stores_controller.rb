class Admins::StoresController < ApplicationController
  before_action :authenticate_admin!

  def index
  	@stores = Store.all
  end

  def show
  	@store = Store.find(params[:id])
  end

  def destroy_all
    @store = Store.find_by(id: params[:id])
    @store.destroy
      redirect_to admins_stores_path, notice: '店舗を削除しました'
  end

  private
  def store_params
    params.require(:store).permit(:corporation_name, :store_name, :email, :postal_code, :address, :telephone_number, :store_image, :area_id)
  end
end
