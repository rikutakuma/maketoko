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
    @user.destroy
    redirect_to root_path, notice: "ご利用、ありがとうございました。"
  end

  def unsubscribe
  end

  def timeline
    @user = User.find(params[:id])
    @relationship_stores = @user.relationship_stores
    @posts = Post.where(store_id: @relationship_stores).order(created_at: :desc).page(params[:page])

  end

  def relationships
    @user = User.find(params[:id])
    @relationship_stores = @user.relationship_stores
    @random = Store.order("RAND()").limit(5)
    #ローカル環境ではRANDOMにしないとエラーになる
  end

  private

  def set_current_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:handle_name, :email, :gender, :age)
  end

end
