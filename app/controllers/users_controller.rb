class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def show
    @user = User.find(params[:id])
    @jots = @user.jots.order(updated_at: :desc)
  end
  def jotfeed
    @jots = current_user.feed.order(updated_at: :desc)
  end
  def create
    User.create(user_params)
    redirect_to root_path
  end
  private
  def user_params
    params.require(:user).permit(:email)
  end
end
