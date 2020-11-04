class Admins::AreasController < ApplicationController
  before_action :authenticate_admin!

  def index
    @area = Area.new
    @areas = Area.all
  end

  def edit
    @area = Area.find(params[:id])
  end

  def update
    @area = Area.find(params[:id])
      if @area.update(area_params)
        redirect_to admins_areas_path, notice: 'エリアを修正しました'
      else
        render "edit"
      end
  end

  def destroy
    @area = Area.find_by(id: params[:id])
    @area.destroy
      redirect_to admins_areas_path, notice: 'エリアを削除しました'
  end

  def create
    @area = Area.new(area_params)
    @areas = Area.all
      if @area.save
        redirect_to admins_areas_path, notice: 'エリアを追加しました'
      else
        render "index"
      end
  end

  private

  def area_params
     params.require(:area).permit(:area_name, :is_active)
  end
end
