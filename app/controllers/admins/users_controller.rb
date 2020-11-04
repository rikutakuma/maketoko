class Admins::UsersController < ApplicationController
  before_action :authenticate_admin!

  def index
  	@users = User.all
  end

  def show
    @user = User.find(params[:id])
    @relationship_stores = @user.relationship_stores
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
      redirect_to admins_users_path, notice: '会員を削除しました'
  end

  private
  def user_params
  	params.require(:user).permit(:handle_name, :email, :gender, :age)
  end

end
