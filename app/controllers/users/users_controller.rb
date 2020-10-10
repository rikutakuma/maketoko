class Users::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_current_user

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to users_mypage_path
    else
      render :edit
    end
  end

  def leave
    @user.update(is_deleted: true)
    reset_session
    redirect_to about_path
  end

  def confirm
  end

  def follows
  end
  
  private

  def set_current_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:handle_name, :email, :gender, :age)
  end
end
