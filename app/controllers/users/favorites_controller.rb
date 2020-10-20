class Users::FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
<<<<<<< HEAD
    @send = Send.find(params[:send_id])
=======
  	@send = Send.find(params[:send_id])
>>>>>>> develop
    @favorite = current_user.favorites.new(send_id: @send.id)
    @favorite.save
    redirect_to request.referer
  end

  def destroy
    send = Send.find(params[:send_id])
    favorite = current_user.favorites.find_by(send_id: send.id)
    favorite.destroy
    redirect_to request.referer
  end

end
